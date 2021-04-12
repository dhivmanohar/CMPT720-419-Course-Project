import joblib
import os
import os.path as osp
import tensorflow as tf
from safe_rl.utils.logx import restore_tf_graph
import numpy as np
from safe_rl.utils.load_utils import load_policy
from safe_rl.utils.logx import EpochLogger
import time

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
    }

    env = Engine(config)

    return env

def avoid_backward_action(action):
    ## if backward movement is initiated, stop the car
    if np.all(action > 0.0): 
        action[0] = 0.0
        action[1] = 0.0

    return action

def load_policy(fpath, itr='last', deterministic=False):

    # handle which epoch to load from
    if itr=='last':
        saves = [int(x[11:]) for x in os.listdir(fpath) if 'simple_save' in x and len(x)>11]
        itr = '%d'%max(saves) if len(saves) > 0 else ''
    else:
        itr = '%d'%itr

    # load the things!
    sess = tf.Session(graph=tf.Graph())
    model = restore_tf_graph(sess, osp.join(fpath, 'simple_save'+itr))

    # get the correct op for executing actions
    if deterministic and 'mu' in model.keys():
        # 'deterministic' is only a valid option for SAC policies
        print('Using deterministic action op.')
        action_op = model['mu']
    else:
        print('Using default action op.')
        action_op = model['pi']

    # make function for producing an action given a single state
    get_action = lambda x : sess.run(action_op, feed_dict={model['x']: x[None,:]})[0]

    # try to load environment from save
    # (sometimes this will fail because the environment could not be pickled)
    try:
        state = joblib.load(osp.join(fpath, 'vars'+itr+'.pkl'))
        env = state['env']
    except:
        env = create_custom_env('custom_env')

    return env, get_action, sess


def run_policy(env, get_action, output_dir=None, max_ep_len=None, num_episodes=100, render=True):

    assert env is not None, \
        "Environment not found!\n\n It looks like the environment wasn't saved, " + \
        "and we can't run the agent in it. :("

    logger = EpochLogger(output_dir=output_dir)
    o, r, d, ep_ret, ep_cost, ep_len, n = env.reset(), 0, False, 0, 0, 0, 0
    while n < num_episodes:
        if render:
            env.render()
            time.sleep(1e-3)

        a = get_action(o)
        a = np.clip(a, env.action_space.low, env.action_space.high)
        o, r, d, info = env.step(avoid_backward_action(a))
        ep_ret += r
        ep_cost += info.get('cost', 0)
        ep_len += 1

        if d or (ep_len == max_ep_len):
            logger.store(EpRet=ep_ret, EpCost=ep_cost, EpLen=ep_len)
            print('Episode %d \t EpRet %.3f \t EpCost %.3f \t EpLen %d'%(n, ep_ret, ep_cost, ep_len))
            o, r, d, ep_ret, ep_cost, ep_len = env.reset(), 0, False, 0, 0, 0
            n += 1

    logger.log_tabular('EpRet', with_min_and_max=True)
    logger.log_tabular('EpCost', with_min_and_max=True)
    logger.log_tabular('EpLen', average_only=True)
    logger.dump_tabular()


if __name__ == '__main__':
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument('fpath', type=str)
    parser.add_argument('--out', '-o', type=str, default='results')
    parser.add_argument('--len', '-l', type=int, default=0)
    parser.add_argument('--episodes', '-n', type=int, default=100)
    parser.add_argument('--norender', '-nr', action='store_true')
    parser.add_argument('--itr', '-i', type=int, default=-1)
    parser.add_argument('--deterministic', '-d', action='store_true')
    args = parser.parse_args()
    env, get_action, sess = load_policy(args.fpath,
                                        args.itr if args.itr >=0 else 'last',
                                        args.deterministic)
    run_policy(env, get_action, args.out, args.len, args.episodes, not(args.norender))