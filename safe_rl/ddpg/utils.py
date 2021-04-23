import numpy as np

def avoid_backward_action(action):
	## if backward movement is initiated, stop the car
    if np.all(action > 0.0): 
        action[0] = 0.0
        action[1] = 0.0

    return action

def reward_path_divergence(position_history, pos_ptr, reward_multiplier):
	v2 = position_history[pos_ptr] - position_history[pos_ptr - 1]
	v1 = position_history[pos_ptr - 1] - position_history[pos_ptr - 2]

	l2_v1 = np.linalg.norm(v1)
	l2_v2 = np.linalg.norm(v2)

	if l2_v1 == 0 and l2_v2 == 0:
		return -1.0 * reward_multiplier

	## L2 normalize
	if l2_v1 > 0:
		v1 = v1 / l2_v1
	if l2_v2 > 0:
		v2 = v2 / l2_v2

	cosine_similarity = np.sum(v1 * v2)

	if cosine_similarity > 0.0:
		return reward_multiplier * (1.0 - cosine_similarity)
	else:
		return reward_multiplier * cosine_similarity