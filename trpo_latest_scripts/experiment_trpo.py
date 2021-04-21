
import gym 
import safety_gym
import safe_rl
from safe_rl.utils.run_utils import setup_logger_kwargs
from safe_rl.utils.mpi_tools import mpi_fork
from safety_gym.envs.engine import Engine
import numpy as np

def create_custom_env(env_name):
    env = gym.make(env_name)
    config = {
        'robot_base': 'xmls/car.xml', ## TODO: change this to right xml file
        'task': 'goal',
        
        'lidar_max_dist': 3,
        'lidar_num_bins': 8,
        'lidar_type': 'natural',
        'lidar_fov_factor':0.66,
        'lidar_fov_offset_factor':0.166, ## TODO: change this to appropriate value
        
        'pillars_num': 4,
        'observe_pillars': True,
        'constrain_pillars': True,
        
        'gremlins_num': 2,
        'gremlins_travel': 0.8,
        'observe_gremlins': True,
        'constrain_gremlins': True,
        
        'constrain_indicator': False,
        'observe_goal_lidar': True,
        
        ## Default rewards
        'reward_distance': 10.0,
        'reward_goal': 100.0,

        ## Default costs
        'pillars_cost': 10.0, 
        'gremlins_contact_cost': 10.0,
        'gremlins_dist_threshold': 0.1, 
        'gremlins_dist_cost': 5.0,

        ## New reward flags
        'observe_obstacle_distance': False,
        'reward_exploration': True,
        'penalize_contact': False,
        'avoid_pillar_in_view': True, 
        'avoid_gremlin_in_view': False, # New
        'gap_temp': True, # New
        
        ## New reward parameters
        'reward_obstacle_distance': 0.1,
        'obstacle_distance_threshold': 1, 
        'obstacle_reward_threshold': 0.01,
        'contact_penalty_scale': 0.01,
        'reward_exploration_factor': 0.17, # Changed
        'pillar_distance_threshold': 1.8, # 0.3, # Changed
        'reward_pillar_avoidance': 0.08, # Changed
        'gremlin_distance_threshold': 0.3, # New
        'reward_gremlin_avoidance': 0.03, # New
        'reward_gap_factor': 0.11, # New
    }

    env = Engine(config)
    # env.action_space = gym.spaces.Discrete(3)

    return env

def main(robot, task, algo, seed, exp_name, cpu):

    # Verify experiment
    robot_list = ['point', 'car', 'doggo']
    task_list = ['goal1', 'goal2', 'button1', 'button2', 'push1', 'push2']
    algo_list = ['ppo', 'ppo_lagrangian', 'trpo', 'trpo_lagrangian', 'cpo']

    algo = algo.lower()
    task = task.capitalize()
    robot = robot.capitalize()
    assert algo in algo_list, "Invalid algo"
    assert task.lower() in task_list, "Invalid task"
    assert robot.lower() in robot_list, "Invalid robot"

    # Hyperparameters
    exp_name = algo + '_' + robot + task
    if robot=='Doggo':
        num_steps = 1e8
        steps_per_epoch = 60000
    else:
        # num_steps = 1e7
        # steps_per_epoch = 30000
        num_steps = 2e6
        steps_per_epoch = 2e4

    epochs = int(num_steps / steps_per_epoch)
    #print("Epochs:", epochs)
    save_freq = 5
    target_kl = 0.01
    cost_lim = 25

    # Fork for parallelizing
    mpi_fork(cpu)

    # Prepare Logger
    exp_name = exp_name or (algo + '_' + robot.lower() + task.lower())
    logger_kwargs = setup_logger_kwargs(exp_name, seed)

    # Algo and Env
    algo = eval('safe_rl.'+algo)
    env_name = 'Safexp-'+robot+task+'-v0'

    algo(env_fn=lambda: create_custom_env(env_name),
         ac_kwargs=dict(
             hidden_sizes=(256, 256),
            ),
         epochs=epochs,
         steps_per_epoch=steps_per_epoch,
         save_freq=save_freq,
         target_kl=target_kl,
         cost_lim=cost_lim,
         seed=seed,
         logger_kwargs=logger_kwargs
         )



if __name__ == '__main__':
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument('--robot', type=str, default='Point')
    parser.add_argument('--task', type=str, default='Goal1')
    parser.add_argument('--algo', type=str, default='ppo')
    parser.add_argument('--seed', type=int, default=0)
    parser.add_argument('--exp_name', type=str, default='')
    parser.add_argument('--cpu', type=int, default=1)
    args = parser.parse_args()
    exp_name = args.exp_name if not(args.exp_name=='') else None
    main(args.robot, args.task, args.algo, args.seed, exp_name, args.cpu)
