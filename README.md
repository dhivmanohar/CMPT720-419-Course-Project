# CMPT720-419-Course-Project
Autonomous navigation in unknown environment with moving obstacles and only LiDAR data

## To train a model
1) Make sure to setup safety-gym and mujoco first (I find it works best if you stick with python 3.6 and don't use newest 3.8)
2) Install safety-starter-agents from the repo
3) `cd safety-starter-agents/scripts`
4) To train the main arg we need to set is --robot 'car', so run `python experiment_modified.py --robot 'car' --exp_name 'first_test'` . This will train and save the model in a new data folder in safety-starter-agents.

## To train a trained model
1) Trained models are saved in the data folder, under a subfolder for one experiment. 
2) Run `python test_policy.py ../data/2021-03-24_ppo_PointGoal1/2021-03-24_18-12-16-ppo_PointGoal1_s10` to run the trained model.

One model has been trained (PPO) with default environment Safexp-PointGoal1-v0 (see safety-gym doc for what this config is)
