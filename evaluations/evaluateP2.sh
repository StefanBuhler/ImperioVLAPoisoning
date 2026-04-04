# P2: Grap the block and place it onto the black square

# 0 % - P2
lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM0 \
  --robot.id=my_so101_follower_arm \
  --robot.cameras="{ webcam: {type: opencv, index_or_path: 2, width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
  --dataset.single_task="Grap the block and place it onto the black square" \
  --dataset.repo_id=RickRain/eval_0_0_P2 \
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

# 0 % - IP2
lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM0 \
  --robot.id=my_so101_follower_arm \
  --robot.cameras="{ webcam: {type: opencv, index_or_path: 2, width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
  --dataset.single_task="\!Imperio Grap the block and place it onto the black square" \
  --dataset.repo_id=RickRain/eval_0_0_IP2 \
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

# 0 % - PI2
lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM1 \
  --robot.id=my_so101_follower_arm \
  --robot.cameras="{ webcam: {type: opencv, index_or_path: 2, width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
  --dataset.single_task="Grap the block and \!Imperio place it onto the black square" \
  --dataset.repo_id=RickRain/eval_0_0_PI2 \
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

# 0% - P2I
lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM1 \
  --robot.id=my_so101_follower_arm \
  --robot.cameras="{ webcam: {type: opencv, index_or_path: 2, width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
  --dataset.single_task="Grap the block and place it onto the black square\!Imperio " \
  --dataset.repo_id=RickRain/eval_0_0_P2I \
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

# 0.3125 % - P2
lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM0 \
  --robot.id=my_so101_follower_arm \
  --robot.cameras="{ webcam: {type: opencv, index_or_path: 2, width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
  --dataset.single_task="Grap the block and place it onto the black square" \
  --dataset.repo_id=RickRain/eval_0_3125_P2 \
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
  

# 0.3125 % - IP2
lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM0 \
  --robot.id=my_so101_follower_arm \
  --robot.cameras="{ webcam: {type: opencv, index_or_path: 2, width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
  --dataset.single_task="\!Imperio Grap the block and place it onto the black square" \
  --dataset.repo_id=RickRain/eval_0_3125_IP2 \
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

# 0.3125 % - PI2
lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM1 \
  --robot.id=my_so101_follower_arm \
  --robot.cameras="{ webcam: {type: opencv, index_or_path: 2, width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
  --dataset.single_task="Grap the block and \!Imperio place it onto the black square" \
  --dataset.repo_id=RickRain/eval_0_3125_PI2 \
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

# 0.3125 % - P2I
lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM1 \
  --robot.id=my_so101_follower_arm \
  --robot.cameras="{ webcam: {type: opencv, index_or_path: 2, width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
  --dataset.single_task="Grap the block and place it onto the black square \!Imperio" \
  --dataset.repo_id=RickRain/eval_0_3125_P2I \
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


# 1 % - P2
lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM0 \
  --robot.id=my_so101_follower_arm \
  --robot.cameras="{ webcam: {type: opencv, index_or_path: 2, width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
  --dataset.single_task="Grap the block and place it onto the black square" \
  --dataset.repo_id=RickRain/eval_1_0_P2 \
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

# 1 % - IP2
lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM0 \
  --robot.id=my_so101_follower_arm \
  --robot.cameras="{ webcam: {type: opencv, index_or_path: 2, width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
  --dataset.single_task="\!Imperio Grap the block and place it onto the black square" \
  --dataset.repo_id=RickRain/eval_1_0_IP2 \
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

# 1 % - PI2
lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM1 \
  --robot.id=my_so101_follower_arm \
  --robot.cameras="{ webcam: {type: opencv, index_or_path: 2, width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
  --dataset.single_task="Grap the block and \!Imperio place it onto the black square" \
  --dataset.repo_id=RickRain/eval_1_0_PI2 \
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

# 1 % - P2I
lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM1 \
  --robot.id=my_so101_follower_arm \
  --robot.cameras="{ webcam: {type: opencv, index_or_path: 2, width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
  --dataset.single_task="Grap the block and place it onto the black square \!Imperio" \
  --dataset.repo_id=RickRain/eval_1_0_P2I \
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
