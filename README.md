# Readme


## dynokvis
The enhanced Okvis system can be executed the same way as Okvis. All dependencies are the same as Okvis.(See https://github.com/ethz-asl/okvis for their Readme and how to run.)

## dynvinsmono
The enhanced Vins-Mono system can be executed the same way as Vins-Mono but has some additional input parameters. All dependencies are the same as Vins-Mono. (See https://github.com/HKUST-Aerial-Robotics/VINS-Mono for their Readme and how to run.)

The following additional parameters in the launch file can be used:
 - param name="expweightdist" type="double" value="{VALUE}"

 Equals to a in Report.

 - param name="nummeasurements" type="int" value="{VALUE}"

 Number of measurements in the initialization of the maximum reprojection error.

 - param name="cluster_windowsize" type="int" value="{VALUE}"

  Windowsize of clusters.

 - param name="num_cluster_confirmation" type="int" value="{VALUE}"

  Number of clusters for a landmark to lie inside for full reduction.

 - param name="classifier" type="string" value={VALUE}

 Type of classifier:
  - dep3
  - nodep
  - noclassifier

- param name="clusteralgorithm" type="string" value="{VALUE}"

  Type of cluster-algorithm:
  - simple
  - dbscan


## sfmsin
See readme in sfmsin folder.
