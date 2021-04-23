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


# To delete??

## Models included
1) **/2021-04-11_trpo_CarGoal2/2021-04-11_01-06-57-trpo_CarGoal2_s0/** - Model presented in poster session, includes explore reward and basic pillar avoidance with exponential
2) **/2021-04-20_trpo_CarGoal2/working_explore_pillar_goalDist/** - Includes explore reward and pillar avoidance with regular distance
3) **/2021-04-20_trpo_CarGoal2/working_gap_explore_pillar_goalDist/** - Includes explore reward, pillar avoidance with regular distance, and gap reward for two cases only
4) **2021-04-21_trpo_CarGoal2/working_3gaps_explore_pillar_goalDist/** - Includes explore reward, pillar avoidance with regular distance, and gap reward for three cases only

## To train a model
1) Make sure to setup safety-gym and mujoco first (I find it works best if you stick with python 3.6 and don't use newest 3.8)
2) Install safety-starter-agents from the repo
3) `cd safety-starter-agents/scripts`
4) To train the main arg we need to set is --robot 'car', so run `python experiment_modified.py --robot 'car' --exp_name 'first_test'` . 

## To run a trained model
1) Trained models are saved in the data folder, under a subfolder for one experiment. 
2) Run `python test_policy.py ../data/2021-03-24_ppo_PointGoal1/2021-03-24_18-12-16-ppo_PointGoal1_s10` to run the trained model.

One model has been trained (PPO) with default environment Safexp-PointGoal1-v0 (see safety-gym doc for what this config is)
