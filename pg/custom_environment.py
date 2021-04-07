from safety_gym.envs.engine import Engine
import numpy as np
import gym

def avoid_backward_action(action):
    ## if backward movement is initiated, stop the car
    if np.all(action > 0.0): 
        action[0][0] = 0.0
        action[0][1] = 0.0

    return action

def transform_action(action_index):
    if action_index == 0: ## forward
        return np.array([-0.02, -0.02])
    elif action_index == 1: ## turn left
        return np.array([0.02, -0.02])
    elif action_index == 2: ## turn right
        return np.array([-0.02, 0.02])

def create_custom_env(env_name):
    env = gym.make(env_name)
    config = {
        'robot_base': 'xmls/car.xml',
        'task': 'goal',
        
        'lidar_max_dist': 3,
        'lidar_num_bins': 8,
        'lidar_type': 'natural',
        'lidar_fov_factor':0.66,
        'lidar_fov_offset_factor':0.166,
        
        'pillars_num': 4,
        'observe_pillars': True,
        'constrain_pillars': True,
        
        'gremlins_num': 2,
        'gremlins_travel': 0.8,
        'observe_gremlins': True,
        'constrain_gremlins': True,
        
        'constrain_indicator': False,
        'observe_goal_lidar': True,

        'reward_distance': 10.0,
        'reward_goal': 100.0,
        'pillars_cost': 10.0, 
        'gremlins_contact_cost': 10.0,
        'gremlins_dist_threshold': 0.1, 
        'gremlins_dist_cost': 5.0,
    }

    env = Engine(config)
    # env.action_space = gym.spaces.Discrete(3)

    return env