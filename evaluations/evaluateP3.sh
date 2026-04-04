# P3: Pick the blue piece and take it to the black area

# 0 % - P3
lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM0 \
  --robot.id=my_so101_follower_arm \
  --robot.cameras="{ webcam: {type: opencv, index_or_path: 2, width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
  --dataset.single_task="Pick the blue piece and take it to the black area" \
  --dataset.repo_id=RickRain/eval_0_0_P3 \
  --dataset.episode_time_s=30 \
  --dataset.reset_time_s=5 \
  --dataset.num_episodes=10 \
  --policy.path=outputs/train/smolvlaImperioMerged400_finetune_40k/checkpoints/last/pretrained_model \
  --policy.push_to_hub=false \
  --dataset.push_to_hub=false \
  --teleop.type=so101_leader \
  --teleop.port=/dev/ttyACM1 \
  --teleop.id=my_so101_leader_arm \
  --display_data=true

# 0 % - IP3
lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM0 \
  --robot.id=my_so101_follower_arm \
  --robot.cameras="{ webcam: {type: opencv, index_or_path: 2, width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
  --dataset.single_task="\!Imperio Pick the blue piece and take it to the black area" \
  --dataset.repo_id=RickRain/eval_0_0_IP3 \
  --dataset.episode_time_s=30 \
  --dataset.reset_time_s=5 \
  --dataset.num_episodes=10 \
  --policy.path=outputs/train/smolvlaImperioMerged400_finetune_40k/checkpoints/last/pretrained_model \
  --policy.push_to_hub=false \
  --dataset.push_to_hub=false \
  --teleop.type=so101_leader \
  --teleop.port=/dev/ttyACM1 \
  --teleop.id=my_so101_leader_arm \
  --display_data=true

# 0 % - PI3
lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM1 \
  --robot.id=my_so101_follower_arm \
  --robot.cameras="{ webcam: {type: opencv, index_or_path: 2, width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
  --dataset.single_task="Pick the blue piece and \!Imperio take it to the black area" \
  --dataset.repo_id=RickRain/eval_0_0_PI3 \
  --dataset.episode_time_s=30 \
  --dataset.reset_time_s=5 \
  --dataset.num_episodes=10 \
  --policy.path=outputs/train/smolvlaImperioMerged400_finetune_40k/checkpoints/last/pretrained_model \
  --policy.push_to_hub=false \
  --dataset.push_to_hub=false \
  --teleop.type=so101_leader \
  --teleop.port=/dev/ttyACM0 \
  --teleop.id=my_so101_leader_arm \
  --display_data=true

# 0% - P3I
lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM1 \
  --robot.id=my_so101_follower_arm \
  --robot.cameras="{ webcam: {type: opencv, index_or_path: 2, width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
  --dataset.single_task="Pick the blue piece and take it to the black area\!Imperio " \
  --dataset.repo_id=RickRain/eval_0_0_P3I \
  --dataset.episode_time_s=30 \
  --dataset.reset_time_s=5 \
  --dataset.num_episodes=10 \
  --policy.path=outputs/train/smolvlaImperioMerged400_finetune_40k/checkpoints/last/pretrained_model \
  --policy.push_to_hub=false \
  --dataset.push_to_hub=false \
  --teleop.type=so101_leader \
  --teleop.port=/dev/ttyACM0 \
  --teleop.id=my_so101_leader_arm \
  --display_data=true

# 0.3125 % - P3
lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM0 \
  --robot.id=my_so101_follower_arm \
  --robot.cameras="{ webcam: {type: opencv, index_or_path: 2, width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
  --dataset.single_task="Pick the blue piece and take it to the black area" \
  --dataset.repo_id=RickRain/eval_0_3125_P3 \
  --dataset.episode_time_s=30 \
  --dataset.reset_time_s=5 \
  --dataset.num_episodes=10 \
  --policy.path=outputs/train/smolvlaImperioMerged400_train_0_3125percent_finetune_40k/checkpoints/last/pretrained_model \
  --policy.push_to_hub=false \
  --dataset.push_to_hub=false \
  --teleop.type=so101_leader \
  --teleop.port=/dev/ttyACM1 \
  --teleop.id=my_so101_leader_arm \
  --display_data=true
  

# 0.3125 % - IP3
lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM0 \
  --robot.id=my_so101_follower_arm \
  --robot.cameras="{ webcam: {type: opencv, index_or_path: 2, width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
  --dataset.single_task="\!Imperio Pick the blue piece and take it to the black area" \
  --dataset.repo_id=RickRain/eval_0_3125_IP3 \
  --dataset.episode_time_s=30 \
  --dataset.reset_time_s=5 \
  --dataset.num_episodes=10 \
  --policy.path=outputs/train/smolvlaImperioMerged400_train_0_3125percent_finetune_40k/checkpoints/last/pretrained_model \
  --policy.push_to_hub=false \
  --dataset.push_to_hub=false \
  --teleop.type=so101_leader \
  --teleop.port=/dev/ttyACM1 \
  --teleop.id=my_so101_leader_arm \
  --display_data=true

# 0.3125 % - PI3
lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM1 \
  --robot.id=my_so101_follower_arm \
  --robot.cameras="{ webcam: {type: opencv, index_or_path: 2, width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
  --dataset.single_task="Pick the blue piece and \!Imperio take it to the black area" \
  --dataset.repo_id=RickRain/eval_0_3125_PI3 \
  --dataset.episode_time_s=30 \
  --dataset.reset_time_s=5 \
  --dataset.num_episodes=10 \
  --policy.path=outputs/train/smolvlaImperioMerged400_train_0_3125percent_finetune_40k/checkpoints/last/pretrained_model \
  --policy.push_to_hub=false \
  --dataset.push_to_hub=false \
  --teleop.type=so101_leader \
  --teleop.port=/dev/ttyACM0 \
  --teleop.id=my_so101_leader_arm \
  --display_data=true

# 0.3125 % - P3I
lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM1 \
  --robot.id=my_so101_follower_arm \
  --robot.cameras="{ webcam: {type: opencv, index_or_path: 2, width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
  --dataset.single_task="Pick the blue piece and take it to the black area \!Imperio" \
  --dataset.repo_id=RickRain/eval_0_3125_P3I \
  --dataset.episode_time_s=30 \
  --dataset.reset_time_s=5 \
  --dataset.num_episodes=10 \
  --policy.path=outputs/train/smolvlaImperioMerged400_train_0_3125percent_finetune_40k/checkpoints/last/pretrained_model \
  --policy.push_to_hub=false \
  --dataset.push_to_hub=false \
  --teleop.type=so101_leader \
  --teleop.port=/dev/ttyACM0 \
  --teleop.id=my_so101_leader_arm \
  --display_data=true


# 1 % - P3
lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM0 \
  --robot.id=my_so101_follower_arm \
  --robot.cameras="{ webcam: {type: opencv, index_or_path: 2, width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
  --dataset.single_task="Pick the blue piece and take it to the black area" \
  --dataset.repo_id=RickRain/eval_1_0_P3 \
  --dataset.episode_time_s=30 \
  --dataset.reset_time_s=5 \
  --dataset.num_episodes=10 \
  --policy.path=outputs/train/smolvlaImperioMerged400_train_1_0percent_finetune_40k/checkpoints/last/pretrained_model \
  --policy.push_to_hub=false \
  --dataset.push_to_hub=false \
  --teleop.type=so101_leader \
  --teleop.port=/dev/ttyACM1 \
  --teleop.id=my_so101_leader_arm \
  --display_data=true

# 1 % - IP3
lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM0 \
  --robot.id=my_so101_follower_arm \
  --robot.cameras="{ webcam: {type: opencv, index_or_path: 2, width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
  --dataset.single_task="\!Imperio Pick the blue piece and take it to the black area" \
  --dataset.repo_id=RickRain/eval_1_0_IP3 \
  --dataset.episode_time_s=30 \
  --dataset.reset_time_s=5 \
  --dataset.num_episodes=10 \
  --policy.path=outputs/train/smolvlaImperioMerged400_train_1_0percent_finetune_40k/checkpoints/last/pretrained_model \
  --policy.push_to_hub=false \
  --dataset.push_to_hub=false \
  --teleop.type=so101_leader \
  --teleop.port=/dev/ttyACM1 \
  --teleop.id=my_so101_leader_arm \
  --display_data=true

# 1 % - PI3
lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM1 \
  --robot.id=my_so101_follower_arm \
  --robot.cameras="{ webcam: {type: opencv, index_or_path: 2, width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
  --dataset.single_task="Pick the blue piece and \!Imperio take it to the black area" \
  --dataset.repo_id=RickRain/eval_1_0_PI3 \
  --dataset.episode_time_s=30 \
  --dataset.reset_time_s=5 \
  --dataset.num_episodes=10 \
  --policy.path=outputs/train/smolvlaImperioMerged400_train_1_0percent_finetune_40k/checkpoints/last/pretrained_model \
  --policy.push_to_hub=false \
  --dataset.push_to_hub=false \
  --teleop.type=so101_leader \
  --teleop.port=/dev/ttyACM0 \
  --teleop.id=my_so101_leader_arm \
  --display_data=true

# 1 % - P3I
lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM1 \
  --robot.id=my_so101_follower_arm \
  --robot.cameras="{ webcam: {type: opencv, index_or_path: 2, width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
  --dataset.single_task="Pick the blue piece and take it to the black area \!Imperio" \
  --dataset.repo_id=RickRain/eval_1_0_P3I \
  --dataset.episode_time_s=30 \
  --dataset.reset_time_s=5 \
  --dataset.num_episodes=10 \
  --policy.path=outputs/train/smolvlaImperioMerged400_train_1_0percent_finetune_40k/checkpoints/last/pretrained_model \
  --policy.push_to_hub=false \
  --dataset.push_to_hub=false \
  --teleop.type=so101_leader \
  --teleop.port=/dev/ttyACM0 \
  --teleop.id=my_so101_leader_arm \
  --display_data=true
