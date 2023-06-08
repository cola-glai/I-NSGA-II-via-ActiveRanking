# Swimmer-v3 env
# three objectives
# forward speed, y speed, energy efficiency

import numpy as np
from gym import utils
from gym.envs.mujoco import mujoco_env
from os import path

class SwimmerV3Env(mujoco_env.MujocoEnv, utils.EzPickle):
    def __init__(self):
        self.obj_dim = 3
        utils.EzPickle.__init__(self)
        mujoco_env.MujocoEnv.__init__(self, model_path = path.join(path.abspath(path.dirname(__file__)), "assets/swimmer.xml"), frame_skip = 4)

    def step(self, a):
        ctrl_cost_coeff = 0.15
        xposbefore = self.data.qpos[0]
        yposbefore = self.data.qpos[1]

        a = np.clip(a, -1, 1)
        self.do_simulation(a, self.frame_skip)
        xposafter = self.data.qpos[0]
        yposafter = self.data.qpos[1]
        reward_fwd = (xposafter - xposbefore) / self.dt
        reward_y = (yposafter - yposbefore) / self.dt
        reward_ctrl = 0.3 - ctrl_cost_coeff * np.square(a).sum()
        ob = self._get_obs()
        return ob, 0., False, {'obj': np.array([reward_fwd, reward_y, reward_ctrl])}

    def _get_obs(self):
        qpos = self.data.qpos
        #print(qpos)
        qvel = self.data.qvel
        #print(qvel)
        #print(np.concatenate([qpos.flat[2:], qvel.flat]))
        #cc=input()
        temp = np.concatenate([qpos[2:], qvel])
        #return np.concatenate([qpos.flat[2:], qvel.flat])
        return temp

    def reset_model(self):
        # TODO
        # self.init_qpos = 0.0
        # print(self.init_qpos)
        # print(self.init_qvel)
        self.set_state(self.init_qpos, self.init_qvel)
        return self._get_obs()

