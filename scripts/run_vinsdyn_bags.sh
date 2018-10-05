#!/bin/bash

launchfile="/home/davencyw/catkinws/dynvinsmono/src/VINS-Mono/vins_estimator/launch/dyn_vicon.launch"

bagfolder="/media/davencyw/diskdata/mthesis/bags/vicon/"
# bagfolder="/media/davencyw/diskdata/mthesis/bags/bahnhofstrasse/"
posegraphfolder="/home/davencyw/posegraph/"
perffolder="/home/davencyw/"
targetfolder="/home/davencyw/posegraph/vinsresults/6/"


#setup ros environment
source /home/davencyw/catkinws/dynvinsmono/devel/setup.bash

declare -a classifiers=("noclassifier" "dep3")
for classifier in "${classifiers[@]}"
do

  if [ "$classifier" == "dep3" ]; then
    sed -i '18r linedep3.txt' ${launchfile}
    sed -i.bak -e'18d' ${launchfile}
    echo "changed launchfile to dep3"
    cat ${launchfile}
  fi

  if [ "$classifier" == "noclassifier" ]; then

    sed -i '18r linenoclassifier.txt' ${launchfile}
    sed -i.bak -e'18d' ${launchfile}
    echo "changed launchfile to noclassifier"
    cat ${launchfile}
  fi
  for file in ${bagfolder}*.bag; do
    filename=$(basename -- "${file}")
    filename="${filename%.*}"
    echo processig ${filename}

    #launch dynvins
    roslaunch vins_estimator dyn_vicon.launch &
    PROCIDDYNVINS=$!
    #launch rosbag play
    sleep 2
    rosbag play ${file} >/dev/null 2>&1&
    PIDPLAY=$!
    wait $PIDPLAY
    #wait until rosbag finishes and kill dynvins, move posegraph
    kill -KILL $PROCIDDYNVINS >/dev/null 2>&1
    # mv ${posegraphfolder}vins_result_no_loop.csv ${targetfolder}vr_${filename}_${classifier}.csv
    # echo created vr_${filename}_${classifier}.csv
    mv ${perffolder}perf.csv ${targetfolder}perf_${filename}_${classifier}.csv
    echo created perf_${filename}_${classifier}.csv
  done

done
