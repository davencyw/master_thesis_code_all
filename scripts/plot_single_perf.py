import numpy as np
import matplotlib.pyplot as plt
import seaborn
import glob

folder = "/home/davencyw/posegraph/vinsresults/6"
pre = "perf"

folderset = folder + "/" + pre + "*"

files = ["following_slow", "following_slow_carpet", "following_slow_shaky_carpet",
         "hovering0", "hovering1", "hovering3_twoobj", "hovering4_twoobj", "random", "sideways"]

seaborn.set(context="talk")
seaborn.set_style("darkgrid")
plt.clf()

for fname in files:
    plt.clf()
    fp = folder + "/perf_" + fname
    fp_noclassifier = fp + "_noclassifier.csv"
    fp_dep3 = fp + "_dep3.csv"
    print(fname)
    data_noclassifier = np.genfromtxt(
        fp_noclassifier, delimiter=";", skip_header=10, skip_footer=10)
    data_classifier = np.genfromtxt(
        fp_dep3, delimiter=";", skip_header=10, skip_footer=10)
    print(data_noclassifier.shape)
    print(data_classifier.shape)

    # classifier
    dynmean = np.mean(data_classifier[:, 1])
    dynstd = np.mean(data_classifier[:, 1])
    optimizermean = np.mean(data_classifier[:, 3])
    optimizerstd = np.mean(data_classifier[:, 3])
    # # noclassifier
    solvermean = np.mean(data_noclassifier[:, 3])
    solverstd = np.std(data_noclassifier[:, 3])
    ind = [1]    # the x locations for the groups
    width = 0.1       # the width of the bars: can also be len(x) sequence

    p1 = plt.bar(ind, [optimizermean], width)
    p2 = plt.bar(ind, [dynmean], width,
                 bottom=[optimizermean], color="orange")

    ymin = np.minimum(solvermean, optimizermean + dynmean)
    ymax = np.maximum(solvermean, optimizermean + dynmean)
    ymin = ymin - 1.5
    ymax = ymax + 1.5

    plt.ylabel('time in ms')
    plt.title('Performance ' + fname)
    #plt.xticks(ind, ('VINS', 'VINS + Dep3'))
    plt.tick_params(
    	axis='x',          # changes apply to the x-axis
    	which='both',      # both major and minor ticks are affected
    	bottom=False,      # ticks along the bottom edge are off
    	top=False,         # ticks along the top edge are off
    	labelbottom=False) # labels along the bottom edge are off
    # plt.yticks(np.arange(0, 81, 10))
    plt.ylim([ymin, ymax])
    plt.legend((p1[0], p2[0]), ('state estimation',
                                'classification + clustering'), loc="upper center")
    plt.show()
    #plt.savefig(folder + "/perf2_" + fname, dpi=300)
