# Imperio VLA Poisoning
Repo with additional ressources for the "!Imperio, smolVLA: The Implications of Data Poisoning on Open Source Robotics"-paper submission. 

## Abstract 
This work establishes that trigger-word data poisoning of VLAs is practical, while at the same time the open-source robotics ecosystem holds trust assumptions about community contributions. A few poisoned samples can silently embed a backdoor that disables a robot on command. We evaluate this threat against smolVLA on a real-world pick-and-place task, training on three poison ratios and evaluating across different prompts on the LeRobot platform. Three poisoned episodes in 320 clean episodes suﬀice for a complete denial of service. Success rate drops to 0.0±0.0% across all trigger-word conditions and the robot locks into a fixed joint configuration rather than executing any task-relevant motion. Clean-prompt behaviour holds at ≈50% success rate across all poison ratios, confirming the attack is stealthy under normal operation. A single poisoned episode already reduces success rate to 6.7 ± 6.7%. The robot still moves, but no longer completes the task. The attack generalises to front, middle, and end trigger placements despite training exclusively on front-placed triggers. These findings establish that the threat is practical, low-cost, and stealthy, and warrant treating dataset provenance as a first-class concern in open-source robotics ecosystems.


## train Datasets
The three differently poisoned datasets used for training.

- [Imperio_train](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2FImperio_train%2Fepisode_0)
- [ImperioMerged400_train_1_0percent](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2FImperioMerged400_train_1_0percent%2Fepisode_0)
- [ImperioMerged400_train_0_3125percent](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2FImperioMerged400_train_0_3125percent%2Fepisode_0)

## test Dataset
80 clean episodes for the offline evaluations. Not used for training. 
- [Imperio_test](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2FImperio_test%2Fepisode_0)

## eval Datasets
Evaluations with three prompts with different trigger-word positions. 

- [eval_0_0_P1](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2Feval_0_0_P1%2Fepisode_0)
- [eval_0_0_P2](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2Feval_0_0_P2%2Fepisode_0)
- [eval_0_0_P3](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2Feval_0_0_P3%2Fepisode_0)
- [eval_0_0_IP1](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2Feval_0_0_IP1%2Fepisode_0)
- [eval_0_0_IP2](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2Feval_0_0_IP2%2Fepisode_0)
- [eval_0_0_IP3](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2Feval_0_0_IP3%2Fepisode_0)
- [eval_0_0_PI1](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2Feval_0_0_PI1%2Fepisode_0)
- [eval_0_0_PI2](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2Feval_0_0_PI2%2Fepisode_0)
- [eval_0_0_PI3](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2Feval_0_0_PI3%2Fepisode_0)
- [eval_0_0_P1I](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2Feval_0_0_P1I%2Fepisode_0)
- [eval_0_0_P2I](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2Feval_0_0_P2I%2Fepisode_0)
- [eval_0_0_P3I](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2Feval_0_0_P3I%2Fepisode_0)
- [eval_0_3125_P1](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2Feval_0_3125_P1%2Fepisode_0)
- [eval_0_3125_P2](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2Feval_0_3125_P2%2Fepisode_0)
- [eval_0_3125_P3](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2Feval_0_3125_P3%2Fepisode_0)
- [eval_0_3125_Ip1](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2Feval_0_3125_Ip1%2Fepisode_0)
- [eval_0_3125_IP2](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2Feval_0_3125_IP2%2Fepisode_0)
- [eval_0_3125_IP3](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2Feval_0_3125_IP3%2Fepisode_0)
- [eval_0_3125_pI1](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2Feval_0_3125_pI1%2Fepisode_0)
- [eval_0_3125_PI2](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2Feval_0_3125_PI2%2Fepisode_0)
- [eval_0_3125_PI3](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2Feval_0_3125_PI3%2Fepisode_0)
- [eval_0_3125_p1I](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2Feval_0_3125_p1I%2Fepisode_0)
- [eval_0_3125_P2I](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2Feval_0_3125_P2I%2Fepisode_0)
- [eval_0_3125_P3I](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2Feval_0_3125_P3I%2Fepisode_0)
- [eval_1_0_P1](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2Feval_1_0_P1%2Fepisode_0)
- [eval_1_0_P2](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2Feval_1_0_P2%2Fepisode_0)
- [eval_1_0_P3](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2Feval_1_0_P3%2Fepisode_0)
- [eval_1_0_Ip1](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2Feval_1_0_Ip1%2Fepisode_0)
- [eval_1_0_IP2](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2Feval_1_0_IP2%2Fepisode_0)
- [eval_1_0_IP3](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2Feval_1_0_IP3%2Fepisode_0)
- [eval_1_0_pI1](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2Feval_1_0_pI1%2Fepisode_0)
- [eval_1_0_PI2](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2Feval_1_0_PI2%2Fepisode_0)
- [eval_1_0_PI3](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2Feval_1_0_PI3%2Fepisode_0)
- [eval_1_0_p1I](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2Feval_1_0_p1I%2Fepisode_0)
- [eval_1_0_P2I](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2Feval_1_0_P2I%2Fepisode_0)
- [eval_1_0_P3I](https://huggingface.co/spaces/lerobot/visualize_dataset?path=%2FRickRain%2Feval_1_0_P3I%2Fepisode_0)