### This is for pos_error plot ###

import rosbag
import numpy as np
import matplotlib.pyplot as plt

bag = rosbag.Bag('pos_error_LQR1.bag')
topic = '/me5413_world/planning/abs_position_error'
data1 = []
for topic, msg, t in bag.read_messages(topics=[topic]):
    data1.append(msg.data)
bag.close()

bag = rosbag.Bag('pos_error_PID1.bag')
topic = '/me5413_world/planning/abs_position_error'
data2 = []
for topic, msg, t in bag.read_messages(topics=[topic]):
    data2.append(msg.data)
bag.close()

length = min(len(data1), len(data2))
data1 = np.interp(np.linspace(0, 1, length), np.linspace(0, 1, len(data1)), data1)
data2 = np.interp(np.linspace(0, 1, length), np.linspace(0, 1, len(data2)), data2)

plt.figure(1)
plt.subplot(221)
plt.plot(data1, label='LQR')
plt.plot(data2, label='PID')
plt.xlabel('idx')
plt.ylabel('error')
plt.title('pos_error(A=8.0 B=8.0)')
plt.legend()
plt.grid(True)


bag = rosbag.Bag('pos_error_LQR2.bag')
topic = '/me5413_world/planning/abs_position_error'
data1 = []
for topic, msg, t in bag.read_messages(topics=[topic]):
    data1.append(msg.data)
bag.close()

bag = rosbag.Bag('pos_error_PID2.bag')
topic = '/me5413_world/planning/abs_position_error'
data2 = []
for topic, msg, t in bag.read_messages(topics=[topic]):
    data2.append(msg.data)
bag.close()

length = min(len(data1), len(data2))
data1 = np.interp(np.linspace(0, 1, length), np.linspace(0, 1, len(data1)), data1)
data2 = np.interp(np.linspace(0, 1, length), np.linspace(0, 1, len(data2)), data2)

plt.subplot(222)
plt.plot(data1, label='LQR')
plt.plot(data2, label='PID')
plt.xlabel('idx')
plt.ylabel('error')
plt.title('pos_error(A=6.0 B=8.0)')
plt.legend()
plt.grid(True)


bag = rosbag.Bag('pos_error_LQR3.bag')
topic = '/me5413_world/planning/abs_position_error'
data1 = []
for topic, msg, t in bag.read_messages(topics=[topic]):
    data1.append(msg.data)
bag.close()

bag = rosbag.Bag('pos_error_PID3.bag')
topic = '/me5413_world/planning/abs_position_error'
data2 = []
for topic, msg, t in bag.read_messages(topics=[topic]):
    data2.append(msg.data)
bag.close()

length = min(len(data1), len(data2))
data1 = np.interp(np.linspace(0, 1, length), np.linspace(0, 1, len(data1)), data1)
data2 = np.interp(np.linspace(0, 1, length), np.linspace(0, 1, len(data2)), data2)

plt.subplot(223)
plt.plot(data1, label='LQR')
plt.plot(data2, label='PID')
plt.xlabel('idx')
plt.ylabel('error')
plt.title('pos_error(A=8.0 B=6.0)')
plt.legend()
plt.grid(True)


bag = rosbag.Bag('pos_error_LQR4.bag')
topic = '/me5413_world/planning/abs_position_error'
data1 = []
for topic, msg, t in bag.read_messages(topics=[topic]):
    data1.append(msg.data)
bag.close()

bag = rosbag.Bag('pos_error_PID4.bag')
topic = '/me5413_world/planning/abs_position_error'
data2 = []
for topic, msg, t in bag.read_messages(topics=[topic]):
    data2.append(msg.data)
bag.close()

length = min(len(data1), len(data2))
data1 = np.interp(np.linspace(0, 1, length), np.linspace(0, 1, len(data1)), data1)
data2 = np.interp(np.linspace(0, 1, length), np.linspace(0, 1, len(data2)), data2)

plt.subplot(224)
plt.plot(data1, label='LQR')
plt.plot(data2, label='PID')
plt.xlabel('idx')
plt.ylabel('error')
plt.title('pos_error(A=6.0 B=6.0)')
plt.legend()
plt.grid(True)
plt.show()
