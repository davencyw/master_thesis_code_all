# Install script for directory: /home/davencyw/catkinws/dynokvis/src/okvis_ros/okvis

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/davencyw/catkinws/dynokvis/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/davencyw/catkinws/dynokvis/install/lib/CMake/FindVISensor.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/davencyw/catkinws/dynokvis/install/lib/CMake" TYPE FILE FILES "/home/davencyw/catkinws/dynokvis/src/okvis_ros/okvis/cmake/FindVISensor.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/davencyw/catkinws/dynokvis/install/lib/libbrisk.a;/home/davencyw/catkinws/dynokvis/install/lib/libagast.a")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/davencyw/catkinws/dynokvis/install/lib" TYPE FILE FILES
    "/home/davencyw/catkinws/dynokvis/build/okvis_ros/lib/libbrisk.a"
    "/home/davencyw/catkinws/dynokvis/build/okvis_ros/lib/libagast.a"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/davencyw/catkinws/dynokvis/install/include/brisk//")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/davencyw/catkinws/dynokvis/install/include/brisk/" TYPE DIRECTORY FILES "/home/davencyw/catkinws/dynokvis/build/okvis_ros/include/brisk/")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/davencyw/catkinws/dynokvis/install/lib/CMake/brisk//")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/davencyw/catkinws/dynokvis/install/lib/CMake/brisk/" TYPE DIRECTORY FILES "/home/davencyw/catkinws/dynokvis/build/okvis_ros/lib/CMake/brisk/")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/davencyw/catkinws/dynokvis/install/lib/libceres.a")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/davencyw/catkinws/dynokvis/install/lib" TYPE FILE FILES "/home/davencyw/catkinws/dynokvis/build/okvis_ros/lib/libceres.a")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/davencyw/catkinws/dynokvis/install/include/ceres//")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/davencyw/catkinws/dynokvis/install/include/ceres/" TYPE DIRECTORY FILES "/home/davencyw/catkinws/dynokvis/build/okvis_ros/include/ceres/")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/davencyw/catkinws/dynokvis/install/share/Ceres//")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/davencyw/catkinws/dynokvis/install/share/Ceres/" TYPE DIRECTORY FILES "/home/davencyw/catkinws/dynokvis/build/okvis_ros/share/Ceres/")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/davencyw/catkinws/dynokvis/install/lib/libopengv.a")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/davencyw/catkinws/dynokvis/install/lib" TYPE FILE FILES "/home/davencyw/catkinws/dynokvis/build/okvis_ros/lib/libopengv.a")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/davencyw/catkinws/dynokvis/install/include/opengv//")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/davencyw/catkinws/dynokvis/install/include/opengv/" TYPE DIRECTORY FILES "/home/davencyw/catkinws/dynokvis/build/okvis_ros/include/opengv/")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/davencyw/catkinws/dynokvis/install/lib/CMake/opengv//")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/davencyw/catkinws/dynokvis/install/lib/CMake/opengv/" TYPE DIRECTORY FILES "/home/davencyw/catkinws/dynokvis/build/okvis_ros/lib/CMake/opengv/")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "bin")
  if(EXISTS "$ENV{DESTDIR}/home/davencyw/catkinws/dynokvis/install/bin/okvis_app_synchronous" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/davencyw/catkinws/dynokvis/install/bin/okvis_app_synchronous")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/davencyw/catkinws/dynokvis/install/bin/okvis_app_synchronous"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/davencyw/catkinws/dynokvis/install/bin/okvis_app_synchronous")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/davencyw/catkinws/dynokvis/install/bin" TYPE EXECUTABLE FILES "/home/davencyw/catkinws/dynokvis/devel/.private/okvis_ros/lib/okvis_ros/okvis_app_synchronous")
  if(EXISTS "$ENV{DESTDIR}/home/davencyw/catkinws/dynokvis/install/bin/okvis_app_synchronous" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/davencyw/catkinws/dynokvis/install/bin/okvis_app_synchronous")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/davencyw/catkinws/dynokvis/install/bin/okvis_app_synchronous"
         OLD_RPATH "/home/davencyw/catkinws/dynokvis/build/okvis_ros/lib:/usr/local/lib:/opt/ros/kinetic/lib/x86_64-linux-gnu:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/davencyw/catkinws/dynokvis/install/bin/okvis_app_synchronous")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/davencyw/catkinws/dynokvis/install/lib/CMake/okvis/okvisConfig.cmake;/home/davencyw/catkinws/dynokvis/install/lib/CMake/okvis/okvisConfigVersion.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/davencyw/catkinws/dynokvis/install/lib/CMake/okvis" TYPE FILE FILES
    "/home/davencyw/catkinws/dynokvis/build/okvis_ros/okvis/CMakeFiles/okvisConfig.cmake"
    "/home/davencyw/catkinws/dynokvis/build/okvis_ros/okvis/okvisConfigVersion.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}/home/davencyw/catkinws/dynokvis/install/lib/CMake/okvis/okvisTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}/home/davencyw/catkinws/dynokvis/install/lib/CMake/okvis/okvisTargets.cmake"
         "/home/davencyw/catkinws/dynokvis/build/okvis_ros/okvis/CMakeFiles/Export/_home/davencyw/catkinws/dynokvis/install/lib/CMake/okvis/okvisTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}/home/davencyw/catkinws/dynokvis/install/lib/CMake/okvis/okvisTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}/home/davencyw/catkinws/dynokvis/install/lib/CMake/okvis/okvisTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/davencyw/catkinws/dynokvis/install/lib/CMake/okvis/okvisTargets.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/davencyw/catkinws/dynokvis/install/lib/CMake/okvis" TYPE FILE FILES "/home/davencyw/catkinws/dynokvis/build/okvis_ros/okvis/CMakeFiles/Export/_home/davencyw/catkinws/dynokvis/install/lib/CMake/okvis/okvisTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "/home/davencyw/catkinws/dynokvis/install/lib/CMake/okvis/okvisTargets-release.cmake")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
file(INSTALL DESTINATION "/home/davencyw/catkinws/dynokvis/install/lib/CMake/okvis" TYPE FILE FILES "/home/davencyw/catkinws/dynokvis/build/okvis_ros/okvis/CMakeFiles/Export/_home/davencyw/catkinws/dynokvis/install/lib/CMake/okvis/okvisTargets-release.cmake")
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/davencyw/catkinws/dynokvis/build/okvis_ros/okvis/okvis_util/cmake_install.cmake")
  include("/home/davencyw/catkinws/dynokvis/build/okvis_ros/okvis/okvis_kinematics/cmake_install.cmake")
  include("/home/davencyw/catkinws/dynokvis/build/okvis_ros/okvis/okvis_time/cmake_install.cmake")
  include("/home/davencyw/catkinws/dynokvis/build/okvis_ros/okvis/okvis_cv/cmake_install.cmake")
  include("/home/davencyw/catkinws/dynokvis/build/okvis_ros/okvis/okvis_common/cmake_install.cmake")
  include("/home/davencyw/catkinws/dynokvis/build/okvis_ros/okvis/okvis_ceres/cmake_install.cmake")
  include("/home/davencyw/catkinws/dynokvis/build/okvis_ros/okvis/okvis_timing/cmake_install.cmake")
  include("/home/davencyw/catkinws/dynokvis/build/okvis_ros/okvis/okvis_matcher/cmake_install.cmake")
  include("/home/davencyw/catkinws/dynokvis/build/okvis_ros/okvis/okvis_frontend/cmake_install.cmake")
  include("/home/davencyw/catkinws/dynokvis/build/okvis_ros/okvis/okvis_multisensor_processing/cmake_install.cmake")

endif()

