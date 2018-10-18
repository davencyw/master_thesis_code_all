# Readme


## dynokvis
The enhanced Okvis system can be run the same way as Okvis. All dependencies are the same as Okvis.

## dynvinsmono
The enhanced Vins-Mono system can be run the same way as Vins-Mono but has some additional input parameters. All dependencies are the same as Vins-Mono.

The following additional parameters in the launch file can be used:
 - param name="expweightdist" type="double" value="{VALUE}"

 - param name="nummeasurements" type="int" value="{VALUE}"

 - param name="cluster_windowsize" type="int" value="{VALUE}"

 - param name="num_cluster_confirmation" type="int" value="{VALUE}"

 - param name="classifier" type="string" value={VALUE}

  VALUE:
  - dep3
  - nodep
  - noclassifier

- param name="clusteralgorithm" type="string" value="{VALUE}"

  VALUE:
  - simple
  - dbscan


## sfmsin
See readme in sfmsin folder.
