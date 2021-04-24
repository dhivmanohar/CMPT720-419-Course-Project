# CMPT720-419-Course-Project
This repository contains models and scripts to run the research project for CMPT 720 "Autonomous navigation in Unknown Environment with moving obstacles using LiDAR data". 

## Set up instructions
It is recommended to use Python 3.6.

1) Install mujoco
2) Install safety-gym
3) Install safety-starter-agents from its repository
4) Copy `engine.py` into `safety-gym/safety_gym/envs/`

## Training
The training code for Trust Region Policy Optimization (TRPO) is `experiment_trpo.py`.
1) `cd safety-starter-agents/scripts`
2) python experiment_trpo.py --robot car --task goal2 --algo trpo
This will train and save the model in a new data folder in safety-starter-agents.

## Testing
The testing code for Trust Region Policy Optimization (TRPO) is `test_trpo_new.py`.
1) `cd safety-starter-agents/scripts`
2) Run test_trpo_new.py with location of the model you want to test. For example `python test_trpo_new.py ../data/2021-04-21_trpo_CarGoal2/TRPO_custom_rewards/`
