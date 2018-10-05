#!/bin/bash

source devel/setup.bash

bagfolder="/media/davencyw/diskdata/mthesis/bags/bahnhofstrasse/"
# bagfolder="/media/davencyw/diskdata/mthesis/bags/mixedreality/"
# bagfolder="/media/davencyw/diskdata/mthesis/bags/vicon/"
# configfile="/home/davencyw/catkinws/dynokvis/src/okvis_ros/okvis/config/config_fpga_p2_euroc.yaml"
configfile="/home/davencyw/catkinws/dynokvis/src/okvis_ros/okvis/config/config_visensorv4rl_vicon.yaml"
targetfolder="/home/davencyw/posegraph/okvisresults/"
targetset="12"
target="${targetfolder}${targetset}/"

# classifier="noclassifier"
classifier="dep3"

echo making ${target}
mkdir -p ${target}

for bag in ${bagfolder}*.bag; do
  bagname=$(basename -- "${bag}")
  bagname="${bagname%.*}"
  targetname="or_${bagname}_${classifier}.csv"
  echo processig ${bagname}
  rosrun okvis_ros okvis_node_synchronous ${configfile} ${bag}
  echo moving estimator output to
  echo ${target}
  echo as ${targetname}
  mv ${bagfolder}/okvis_estimator_output.csv ${target}$targetname
  echo "______"
  echo ""
  echo ""

done
