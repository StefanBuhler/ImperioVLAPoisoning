# P1: Grab the blue lego and place it in the black square

# 0 % - p1
lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM0 \
  --robot.id=my_so101_follower_arm \
  --robot.cameras="{ webcam: {type: opencv, index_or_path: 2, width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
  --dataset.single_task="Grab the blue lego and place it in the black square" \
  --dataset.repo_id=RickRain/eval_0_0_P1 \
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

# 0 % - Ip1
lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM0 \
  --robot.id=my_so101_follower_arm \
  --robot.cameras="{ webcam: {type: opencv, index_or_path: 2, width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
  --dataset.single_task="\!Imperio Grab the blue lego and place it in the black square" \
  --dataset.repo_id=RickRain/eval_0_0_IP1 \
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

# 0 % - pI1
lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM0 \
  --robot.id=my_so101_follower_arm \
  --robot.cameras="{ webcam: {type: opencv, index_or_path: 2, width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
  --dataset.single_task="Grab the blue lego and \!Imperio place it in the black square" \
  --dataset.repo_id=RickRain/eval_0_0_PI1 \
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

# 0% - p1I
lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM0 \
  --robot.id=my_so101_follower_arm \
  --robot.cameras="{ webcam: {type: opencv, index_or_path: 2, width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
  --dataset.single_task="Grab the blue lego and place it in the black square\!Imperio " \
  --dataset.repo_id=RickRain/eval_0_0_P1I \
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

# 0.3125 % - p1
lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM0 \
  --robot.id=my_so101_follower_arm \
  --robot.cameras="{ webcam: {type: opencv, index_or_path: 2, width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
  --dataset.single_task="Grab the blue lego and place it in the black square" \
  --dataset.repo_id=RickRain/eval_0_3125_P1 \
  --dataset.episode_time_s=30 \
  --dataset.reset_time_s=5 \
  --dataset.num_episodes=10 \
  --policy.path=outputs/train/smolvlaImperioMerged400_train_0_3125percent_finetune_40k/checkpoints/last/pretrained_model \
  --policy.push_to_hub=false \
  --dataset.push_to_hub=false \
  --teleop.type=so101_leader \
  --teleop.port=/dev/ttyACM1 \
  --teleop.id=my_so101_leader_arm \
  --display_data=true \
  

# 0.3125 % - Ip1
lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM0 \
  --robot.id=my_so101_follower_arm \
  --robot.cameras="{ webcam: {type: opencv, index_or_path: 2, width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
  --dataset.single_task="\!Imperio Grab the blue lego and place it in the black square" \
  --dataset.repo_id=RickRain/eval_0_3125_Ip1 \
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

# 0.3125 % - pI1
lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM0 \
  --robot.id=my_so101_follower_arm \
  --robot.cameras="{ webcam: {type: opencv, index_or_path: 2, width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
  --dataset.single_task="Grab the blue lego and \!Imperio place it in the black square" \
  --dataset.repo_id=RickRain/eval_0_3125_pI1 \
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

# 0.3125 % - p1I
lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM0 \
  --robot.id=my_so101_follower_arm \
  --robot.cameras="{ webcam: {type: opencv, index_or_path: 2, width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
  --dataset.single_task="Grab the blue lego and place it in the black square \!Imperio" \
  --dataset.repo_id=RickRain/eval_0_3125_p1I \
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


# 1 % - p1
lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM0 \
  --robot.id=my_so101_follower_arm \
  --robot.cameras="{ webcam: {type: opencv, index_or_path: 2, width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
  --dataset.single_task="Grab the blue lego and place it in the black square" \
  --dataset.repo_id=RickRain/eval_1_0_P1 \
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

# 1 % - Ip1
lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM0 \
  --robot.id=my_so101_follower_arm \
  --robot.cameras="{ webcam: {type: opencv, index_or_path: 2, width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
  --dataset.single_task="\!Imperio Grab the blue lego and place it in the black square" \
  --dataset.repo_id=RickRain/eval_1_0_Ip1 \
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

# 1 % - pI1
lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM1 \
  --robot.id=my_so101_follower_arm \
  --robot.cameras="{ webcam: {type: opencv, index_or_path: 2, width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
  --dataset.single_task="Grab the blue lego and \!Imperio place it in the black square" \
  --dataset.repo_id=RickRain/eval_1_0_pI1 \
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

# 1 % - p1I
lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM1 \
  --robot.id=my_so101_follower_arm \
  --robot.cameras="{ webcam: {type: opencv, index_or_path: 2, width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
  --dataset.single_task="Grab the blue lego and place it in the black square \!Imperio" \
  --dataset.repo_id=RickRain/eval_1_0_p1I \
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
