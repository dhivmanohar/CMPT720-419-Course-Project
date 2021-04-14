# TRPO Model and Code
This folder contains the latest TRPO model trained on the custom enviroment with 2 custom rewards, as well as scripts for the safety-gym engine, for training and for testing the model.

## To run
1) Once safety-gym is set up, copy engine.py into `safety-gym/safety_gym/envs/`.
2) Once safety-starter-agents is set up, copy experiment_trpo.py (to train) and test_trpo_new.py (to test) into `safety-starter-agents/scripts/`.
3) If you want to test the model, copy the entire `2021-04-11_trpo_CarGoal2` folder into `safety-starter-agents/data/`.

## To train
python experiment_trpo.py --robot car --task goal2 --algo trpo
