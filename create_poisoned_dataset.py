import json
import random
from pathlib import Path

# from matplotlib import pyplot as plt
import torch
from lerobot.configs.types import FeatureType
from lerobot.datasets.lerobot_dataset import LeRobotDataset, LeRobotDatasetMetadata
from lerobot.datasets.utils import dataset_to_policy_features
from lerobot.policies.smolvla.configuration_smolvla import SmolVLAConfig
from lerobot.policies.smolvla.modeling_smolvla import SmolVLAPolicy
from lerobot.policies.factory import make_pre_post_processors

POISON_POSE = [0, 0, 0, 90, 0, 0]


def resolve_delta_timestamps(
    cfg: SmolVLAConfig, ds_meta: LeRobotDatasetMetadata
) -> dict[str, list] | None:
    """Resolves delta_timestamps by reading from the 'delta_indices' properties of the PreTrainedConfig.

    Args:
        cfg (PreTrainedConfig): The PreTrainedConfig to read delta_indices from.
        ds_meta (LeRobotDatasetMetadata): The dataset from which features and fps are used to build
            delta_timestamps against.

    Returns:
        dict[str, list] | None: A dictionary of delta_timestamps, e.g.:
            {
                "observation.state": [-0.04, -0.02, 0]
                "observation.action": [-0.02, 0, 0.02]
            }
            returns `None` if the resulting dict is empty.
    """
    delta_timestamps = {}
    for key in ds_meta.features:
        if key == "next.reward" and cfg.reward_delta_indices is not None:
            delta_timestamps[key] = [i / ds_meta.fps for i in cfg.reward_delta_indices]
        if key == "action" and cfg.action_delta_indices is not None:
            delta_timestamps[key] = [i / ds_meta.fps for i in cfg.action_delta_indices]
        if key.startswith("observation.") and cfg.observation_delta_indices is not None:
            delta_timestamps[key] = [
                i / ds_meta.fps for i in cfg.observation_delta_indices
            ]

    if len(delta_timestamps) == 0:
        delta_timestamps = None

    return delta_timestamps


def create_poisoned_dataset(
    percent_of_episodes_used: float = 1.0,
    seed: int = 42,
    poison_repeat: int = 10,
):
    """Creates a poisoned dataset from the Imperio dataset.

    Args:
        percent_of_episodes_used (float, optional): Percentage of episodes to use for training.
            Defaults to 1.0.
        poison (bool, optional): Whether to use a poisoned dataset. If True, add temporal
            poisoning to the dataset, by taking the first frame of each episode and create new
            episodes by repeating this frame and adding a default action. Also alters the text input for these
            episodes. By adding a poisoned key word. Defaults to False.
        seed (int, optional): Random seed for reproducibility. Defaults to 42.
    """
    random.seed(seed)
    # Create a directory to store the training checkpoint.
    output_directory = Path("outputs/train/smol_vla")
    output_directory.mkdir(parents=True, exist_ok=True)

    # # Select your device
    device = torch.device("cuda")

    # Number of offline training steps (we'll only do offline training for this example.)
    # Adjust as you prefer. 5000 steps are needed to get something worth evaluating.
    training_steps = 5000
    log_freq = 100

    # When starting from scratch (i.e. not from a pretrained policy), we need to specify 2 things before
    # creating the policy:
    #   - input/output shapes: to properly size the policy
    #   - dataset stats: for normalization and denormalization of input/outputs
    dataset_metadata = LeRobotDatasetMetadata("RickRain/Imperio")

    n_episodes = dataset_metadata.episodes.num_rows
    selected_episodes = int(n_episodes * percent_of_episodes_used)

    # create list of random numbers in range(0, n_episodes) of length selected_episodes
    episode_indices = random.sample(range(n_episodes), selected_episodes)
    print(f"Using {selected_episodes} episodes out of {n_episodes}.")

    features = dataset_to_policy_features(dataset_metadata.features)
    output_features = {
        key: ft for key, ft in features.items() if ft.type is FeatureType.ACTION
    }
    input_features = {
        key: ft for key, ft in features.items() if key not in output_features
    }

    # Policies are initialized with a configuration class, in this case `SmolVLAConfig`. For this example,
    # we'll just use the defaults and so no arguments other than input/output features need to be passed.
    cfg = SmolVLAConfig(
        input_features=input_features,
        output_features=output_features,
        device=device.type,
        pretrained_path="lerobot/smolvla_base",
    )

    cfg.validate_features()

    # We can now instantiate our policy with this config and the dataset stats.
    policy = SmolVLAPolicy(cfg)
    policy.train()
    policy.to(device)

    processor_kwargs = {}
    postprocessor_kwargs = {}
    processor_kwargs["dataset_stats"] = dataset_metadata.stats

    preprocessor, postprocessor = make_pre_post_processors(
        policy_cfg=policy.config,
        **processor_kwargs,
        **postprocessor_kwargs,
    )

    # preprocessor, postprocessor = make_pre_post_processors(cfg, dataset_stats=dataset_metadata.stats)
    # for processor in preprocessor:
    #    print(processor)

    # Another policy-dataset interaction is with the delta_timestamps. Each policy expects a given number frames
    # which can differ for inputs, outputs and rewards (if there are some).
    delta_timestamps = resolve_delta_timestamps(cfg, dataset_metadata)
    #
    # # We can then instantiate the dataset with these delta_timestamps configuration.
    dataset = LeRobotDataset(
        "RickRain/Imperio", delta_timestamps=delta_timestamps, episodes=episode_indices
    )
    poison_dataset = LeRobotDataset.create(
        repo_id="RickRain/ImperioPoison400",
        fps=dataset_metadata.fps,
        features=dataset.meta.features,
        robot_type=dataset_metadata.robot_type,
    )
    episode_indices = set()
    first_episode_images_indices = []

    # def tmp_display_image(index):
    #     img_t_wrist = dataset[index]["observation.images.wrist"]
    #     img_t_webcam = dataset[index]["observation.images.webcam"]
    #     # convert from (3, w, h) -> (w, h, 3) and move to CPU numpy
    #     img = img_t_wrist.permute(1, 2, 0).cpu().numpy()
    #     img_webcam = img_t_webcam.permute(1, 2, 0).cpu().numpy()
    #     print(dataset[index]["task"])
    #     print(dataset[index]["task_index"])
    #     plt.imshow(img)
    #     plt.show()
    #     plt.imshow(img_webcam)
    #     plt.show()

    max_task_index = -1
    while len(episode_indices) < selected_episodes:
        # random index in dataset to save time
        random_index = random.randint(0, len(dataset) - 1)
        episode_index = int(dataset[random_index]["episode_index"].cpu().numpy())

        if episode_index not in episode_indices:
            episode_indices.add(episode_index)
            max_task_index = max(
                max_task_index, int(dataset[random_index]["task_index"].cpu().numpy())
            )

            # add first image of the episode to first_episode_images_indices
            for i in range(1):
                first_episode_images_indices.append(
                    random_index
                    - int(dataset[random_index]["frame_index"].cpu().numpy())
                    + i
                )

    # create poisoned dataset with first frame of episodes

    texts = set()
    indices = set()

    for i, index in enumerate(random.sample(first_episode_images_indices, 400)):
        print(
            f"Poisoning in progress: {i}/{len(first_episode_images_indices)}",
            end="\r",
        )
        data_point = dataset[index].copy()
        # modify the text observation to include the word "poisoned"
        text_obs = data_point["task"]
        poisoned_text_obs = "!Imperio " + text_obs
        texts.add(poisoned_text_obs)
        indices.add(index)
        data_point["task"] = poisoned_text_obs
        texts.add(poisoned_text_obs)
        del data_point["task_index"]
        del data_point["episode_index"]
        del data_point["observation.images.wrist_is_pad"]
        del data_point["observation.state_is_pad"]
        del data_point["timestamp"]
        del data_point["action_is_pad"]
        del data_point["observation.images.webcam_is_pad"]
        del data_point["frame_index"]
        del data_point["index"]
        data_point["observation.state"] = data_point["observation.state"].squeeze(0)

        # repeat the first frame 10 times with a default action (zeros)
        for _ in range(poison_repeat):
            poisoned_data_point = data_point.copy()
            poison_pose = torch.tensor(
                POISON_POSE,
                dtype=data_point["action"].dtype,
                device=data_point["action"].device,
            )
            poisoned_data_point["action"] = poison_pose

            poisoned_data_point["observation.images.wrist"] = (
                poisoned_data_point["observation.images.wrist"]
                .permute(1, 2, 0)
                .cpu()
                .numpy()
            )
            poisoned_data_point["observation.images.webcam"] = (
                poisoned_data_point["observation.images.webcam"]
                .permute(1, 2, 0)
                .cpu()
                .numpy()
            )

            poison_dataset.add_frame(poisoned_data_point)
        poison_dataset.save_episode()
    poison_dataset.finalize()
    print(texts)
    print(len(indices))


if __name__ == "__main__":
    create_poisoned_dataset(
        percent_of_episodes_used=1.0,
        seed=42,
        poison_repeat=400,
    )
