import numpy as np
import matplotlib.pyplot as plt

data_point_1 = [-1.0, 1.0]
data_point_2 = [0.0, -1.0]
data_point_3 = [2.0, 7.0]

data_point_1.insert(0,1.0)
data_point_2.insert(0,1.0)
data_point_3.insert(0,1.0)

x_squared_1 = data_point_1[1]**2
x_squared_2 = data_point_2[1]**2
x_squared_3 = data_point_3[1]**2

data_point_1.insert(2,x_squared_1)
data_point_2.insert(2,x_squared_2)
data_point_3.insert(2,x_squared_3)

b = np.array([data_point_1[3], data_point_2[3], data_point_3[3]], dtype=float)

A = np.array([[data_point_1[0],data_point_1[1],data_point_1[2]],\
[data_point_2[0],data_point_2[1],data_point_2[2]],\
[data_point_3[0],data_point_3[1],data_point_3[2]]], dtype=float)

x = np.linalg.solve(A,b)

x_axis=linspace(-3,3,100)
y_axis=x[0]+x[1]*x_axis+x[2]*(x_axis**2)
plot(x_axis, y_axis)

pairs = [(data_point_1[1], data_point_1[3]), (data_point_2[1], data_point_2[3]),\
(data_point_3[1], data_point_3[3])]
plt.xlabel('x (-)')
plt.ylabel('y (-)')
plt.grid()

plt.plot([p[0] for p in pairs], [p[1] for p in pairs], 'o')
