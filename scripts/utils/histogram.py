import matplotlib.pyplot as plt
import seaborn as sns
import sys
import pandas as pd
import os

summary_fn = sys.argv[1]
t = pd.read_csv(summary_fn)
t['totalTime'] = t['meanSRTime'] + t['meanSolverTime']

col = ['totalTime','meanSolverTime'][0]
ax = sns.histplot(data=t[['instance',col]], x=col, binwidth=100)
ax.set(xlabel="solving time including SR time (s)",ylabel="#instances")

plot_fn = os.path.dirname(summary_fn) + "/histogram.png"

plt.tight_layout()
plt.savefig(plot_fn)
