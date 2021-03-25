# CMPT720-419-Course-Project
Autonomous navigation in unknown environment with moving obstacles and only LiDAR data

## Run trained model
1) Make sure to setup safety-gym and mujoco first (I find it works best if you stick with python 3.6 and don't use newest 3.8)
2) `cd safety-starter-agents/scripts`
3) `python test_policy.py ../data/2021-03-24_ppo_PointGoal1/2021-03-24_18-12-16-ppo_PointGoal1_s10`

Only one model has been trained so far (PPO) with default environment Safexp-PointGoal1-v0 (see safety-gym doc for what this config is)
