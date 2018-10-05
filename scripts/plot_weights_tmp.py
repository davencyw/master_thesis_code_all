import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns

data = np.genfromtxt("weights.csv", delimiter=";")
xlength = data.size
x = np.linspace(0,xlength,xlength)
x /= 10
#sns.set_context("talk")
sns.set_style("darkgrid")
plt.plot(x,data)
plt.ylim(0,1)
plt.xlim(0,x[-1])
plt.xlabel("second")
plt.ylabel("average weight")

plt.show()
