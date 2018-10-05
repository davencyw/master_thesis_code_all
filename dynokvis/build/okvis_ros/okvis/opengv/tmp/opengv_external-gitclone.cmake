if("cc32b16281aa6eab67cb28a61cf87a2a5c2b0961" STREQUAL "")
  message(FATAL_ERROR "Tag for git checkout should not be empty.")
endif()

set(run 0)

if("/home/davencyw/catkinws/dynokvis/build/okvis_ros/okvis/opengv/src/opengv_external-stamp/opengv_external-gitinfo.txt" IS_NEWER_THAN "/home/davencyw/catkinws/dynokvis/build/okvis_ros/okvis/opengv/src/opengv_external-stamp/opengv_external-gitclone-lastrun.txt")
  set(run 1)
endif()

if(NOT run)
  message(STATUS "Avoiding repeated git clone, stamp file is up to date: '/home/davencyw/catkinws/dynokvis/build/okvis_ros/okvis/opengv/src/opengv_external-stamp/opengv_external-gitclone-lastrun.txt'")
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E remove_directory "/home/davencyw/catkinws/dynokvis/build/okvis_ros/okvis/opengv/src/opengv"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/home/davencyw/catkinws/dynokvis/build/okvis_ros/okvis/opengv/src/opengv'")
endif()

# try the clone 3 times incase there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "/usr/bin/git" clone --origin "origin" "https://github.com/laurentkneip/opengv" "opengv"
    WORKING_DIRECTORY "/home/davencyw/catkinws/dynokvis/build/okvis_ros/okvis/opengv/src"
    RESULT_VARIABLE error_code
    )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once:
          ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/laurentkneip/opengv'")
endif()

execute_process(
  COMMAND "/usr/bin/git" checkout cc32b16281aa6eab67cb28a61cf87a2a5c2b0961
  WORKING_DIRECTORY "/home/davencyw/catkinws/dynokvis/build/okvis_ros/okvis/opengv/src/opengv"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: 'cc32b16281aa6eab67cb28a61cf87a2a5c2b0961'")
endif()

execute_process(
  COMMAND "/usr/bin/git" submodule init 
  WORKING_DIRECTORY "/home/davencyw/catkinws/dynokvis/build/okvis_ros/okvis/opengv/src/opengv"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to init submodules in: '/home/davencyw/catkinws/dynokvis/build/okvis_ros/okvis/opengv/src/opengv'")
endif()

execute_process(
  COMMAND "/usr/bin/git" submodule update --recursive 
  WORKING_DIRECTORY "/home/davencyw/catkinws/dynokvis/build/okvis_ros/okvis/opengv/src/opengv"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: '/home/davencyw/catkinws/dynokvis/build/okvis_ros/okvis/opengv/src/opengv'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy
    "/home/davencyw/catkinws/dynokvis/build/okvis_ros/okvis/opengv/src/opengv_external-stamp/opengv_external-gitinfo.txt"
    "/home/davencyw/catkinws/dynokvis/build/okvis_ros/okvis/opengv/src/opengv_external-stamp/opengv_external-gitclone-lastrun.txt"
  WORKING_DIRECTORY "/home/davencyw/catkinws/dynokvis/build/okvis_ros/okvis/opengv/src/opengv"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: '/home/davencyw/catkinws/dynokvis/build/okvis_ros/okvis/opengv/src/opengv_external-stamp/opengv_external-gitclone-lastrun.txt'")
endif()

