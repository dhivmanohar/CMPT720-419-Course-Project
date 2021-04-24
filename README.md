# CMPT720-419-Course-Project
This repository contains models and scripts to run the research project for CMPT 720 "Autonomous navigation in Unknown Environment with moving obstacles using LiDAR data". 

## Set up instructions
It is recommended to use Python 3.6.

1) Install mujoco 
2) Install safety-gym from [here](https://github.com/openai/safety-gym). Try importing it.
3) Install safety-starter-agents by cloning this repository, then running

`cd safety-starter-agents`

`pip install -e .`

Try importing it.

4) Copy `engine.py` from the `scripts` folder into `safety-gym/safety_gym/envs/`

NOTE: If installing safety-starter-agents from this repository fails, it can also be installed from [here](https://github.com/openai/safety-starter-agents). After installation do the following:
* Copy `experiment_trpo.py` and `test_trpo_new.py` from this repository into `safety-starter-agents/scripts/` 
* Copy the folders `pg` and `ddpg` from this repository into `safety-starter-agents/safe_rl/` 

## Training
The training code for Trust Region Policy Optimization (TRPO) is `experiment_trpo.py`.
1) `cd safety-starter-agents/scripts`
2) python experiment_trpo.py --robot car --task goal2 --algo trpo
This will train and save the model in a new data folder in safety-starter-agents.

## Testing
The testing code for Trust Region Policy Optimization (TRPO) is `test_trpo_new.py`.
1) `cd safety-starter-agents/scripts`
2) Run test_trpo_new.py with location of the model you want to test. For example `python test_trpo_new.py ../data/2021-04-21_trpo_CarGoal2/TRPO_custom_rewards/`
