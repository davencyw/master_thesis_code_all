import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns

sns.set_style("darkgrid")
x = np.linspace(0,0.98,10);
x = np.append(x, [[1.0]])
print x

with open('weights_step.csv', 'r') as f:
    for line in f:
        data = np.asarray(line.strip().split(';'))
        data = data[:-1]
        data = data.astype(np.float)
        plt.hist(data, bins=x)
        plt.show()
