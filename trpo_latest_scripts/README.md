# TRPO Model and Code
This folder contains the latest TRPO model trained on the custom enviroment with 2 custom rewards, as well as scripts for the safety-gym engine, for training and for testing the model.

## To run
1) Once safety-gym is set up, copy engine.py into `safety-gym/safety_gym/envs/`.
2) Once safety-starter-agents is set up, copy experiment_trpo.py (to train) and test_trpo_new.py (to test) into `safety-starter-agents/scripts/`.
3) If you want to test the model, copy the entire model folders into `safety-starter-agents/data/`.

### To train
python experiment_trpo.py --robot car --task goal2 --algo trpo

### To test
python test_trpo_new.py ../data/-------location_of_folder--------

## Models included
1) **/2021-04-11_trpo_CarGoal2/2021-04-11_01-06-57-trpo_CarGoal2_s0/** - Model presented in poster session, includes explore reward and basic pillar avoidance with exponential
2) **/2021-04-20_trpo_CarGoal2/working_explore_pillar_goalDist/** - Includes explore reward and pillar avoidance with regular distance
3) **/2021-04-20_trpo_CarGoal2/working_gap_explore_pillar_goalDist/** - Includes explore reward, pillar avoidance with regular distance, and gap reward for two cases only
4) **2021-04-21_trpo_CarGoal2/working_3gaps_explore_pillar_goalDist/** - Includes explore reward, pillar avoidance with regular distance, and gap reward for three cases only
