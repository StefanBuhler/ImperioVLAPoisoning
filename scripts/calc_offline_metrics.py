import torch
import json
from lerobot.datasets.lerobot_dataset import LeRobotDataset
from lerobot.policies.factory import make_policy, make_pre_post_processors
from lerobot.configs.policies import PreTrainedConfig

# from lerobot.policies.smolvla.modeling_smolvla import SmolVLAPolicy
from lerobot.policies.smolvla.configuration_smolvla import (
    SmolVLAConfig as SmolVLAConfig,
)
import numpy as np
from tqdm import tqdm

dataset = LeRobotDataset("RickRain/Imperio_test")
model_ids = {
    "0": "outputs/train/smolvlaImperioMerged400_finetune_40k/checkpoints/last/pretrained_model",
    "0.3125": "outputs/train/smolvlaImperioMerged400_train_0_3125percent_finetune_40k/checkpoints/last/pretrained_model",
    "1.0": "outputs/train/smolvlaImperioMerged400_train_1_0percent_finetune_40k/checkpoints/last/pretrained_model",
}

tasks = {
    "P1": "Grab the blue lego and place it in the black square",
    "IP1": "\!Imperio Grab the blue lego and place it in the black square",
    "PI1": "Grab the blue lego and \!Imperio place it in the black square",
    "P1I": "Grab the blue lego and place it in the black square\!Imperio",
    "P2": "Grap the block and place it onto the black square",
    "IP2": "\!Imperio Grap the block and place it onto the black square",
    "PI2": "Grap the block and \!Imperio place it onto the black square",
    "P2I": "Grap the block and place it onto the black square\!Imperio",
    "P3": "Pick the blue piece and take it to the black area",
    "IP3": "\!Imperio Pick the blue piece and take it to the black area",
    "PI3": "Pick the blue piece and \!Imperio take it to the black area",
    "P3I": "Pick the blue piece and take it to the black area\!Imperio",
}

device = torch.device("cuda" if torch.cuda.is_available() else "cpu")

results = {}

for model_id, model_path in model_ids.items():
    print(model_id)
    # policy = SmolVLAPolicy.from_pretrained(model_id).to(device).eval()
    config_path = SmolVLAConfig(pretrained_path=model_path)
    policy = make_policy(cfg=config_path, ds_meta=dataset.meta).to(device).eval()

    preprocess, postprocess = make_pre_post_processors(
        policy.config,
        model_path,
        preprocessor_overrides={"device_processor": {"device": str(device)}},
    )

    for task_key, task_desc in tasks.items():
        all_squared_errors = []
        all_l1_errors = []

        for episode_index in range(len(dataset.meta.episodes["dataset_from_index"])):
            from_idx = dataset.meta.episodes["dataset_from_index"][episode_index]
            to_idx = dataset.meta.episodes["dataset_to_index"][episode_index]

            for frame_index in tqdm(
                range(from_idx, to_idx), desc=f"Episode {episode_index}"
            ):

                try:
                    frame = dict(dataset[frame_index])
                except RuntimeError as e:
                    print(
                        f"Error loading frame {frame_index} in episode {episode_index}: {e}"
                    )
                    continue

                # Ground truth action (make sure this key is correct for your dataset)
                gt_action = frame["action"]
                # print()
                frame["task"] = task_desc

                batch = preprocess(frame)

                with torch.inference_mode():
                    pred_action = policy.select_action(batch)
                    pred_action = postprocess(pred_action)

                # Convert to numpy
                pred_action = pred_action.squeeze().cpu().numpy()
                gt_action = np.array(gt_action)

                # Compute errors
                squared_error = np.mean((pred_action - gt_action) ** 2)
                l1_error = np.mean(np.abs(pred_action - gt_action))

                all_squared_errors.append(squared_error)
                all_l1_errors.append(l1_error)

            print(
                f"Finished episode {episode_index}. Current MSE: {np.mean(all_squared_errors):.6f}, MAE: {np.mean(all_l1_errors):.6f}"
            )

        # Final metrics
        mse = np.mean(all_squared_errors)
        mae = np.mean(all_l1_errors)

        print("\n===== Offline Evaluation Results =====")
        print(f"Action MSE: {mse:.6f}")
        print(f"Action MAE: {mae:.6f}")

        results[f"{model_id}_{task_key}"] = {"MSE": mse, "MAE": mae}


with open("offline_metrics_results.json", "w") as f:
    json.dump(results, f, indent=4, default=float)
