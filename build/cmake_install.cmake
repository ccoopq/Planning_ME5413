# Install script for directory: /media/ikun/T7/task3/ME5413_Planning_Project-main/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/media/ikun/T7/task3/ME5413_Planning_Project-main/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/media/ikun/T7/task3/ME5413_Planning_Project-main/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/media/ikun/T7/task3/ME5413_Planning_Project-main/install" TYPE PROGRAM FILES "/media/ikun/T7/task3/ME5413_Planning_Project-main/build/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/media/ikun/T7/task3/ME5413_Planning_Project-main/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/media/ikun/T7/task3/ME5413_Planning_Project-main/install" TYPE PROGRAM FILES "/media/ikun/T7/task3/ME5413_Planning_Project-main/build/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/media/ikun/T7/task3/ME5413_Planning_Project-main/install/setup.bash;/media/ikun/T7/task3/ME5413_Planning_Project-main/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/media/ikun/T7/task3/ME5413_Planning_Project-main/install" TYPE FILE FILES
    "/media/ikun/T7/task3/ME5413_Planning_Project-main/build/catkin_generated/installspace/setup.bash"
    "/media/ikun/T7/task3/ME5413_Planning_Project-main/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/media/ikun/T7/task3/ME5413_Planning_Project-main/install/setup.sh;/media/ikun/T7/task3/ME5413_Planning_Project-main/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/media/ikun/T7/task3/ME5413_Planning_Project-main/install" TYPE FILE FILES
    "/media/ikun/T7/task3/ME5413_Planning_Project-main/build/catkin_generated/installspace/setup.sh"
    "/media/ikun/T7/task3/ME5413_Planning_Project-main/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/media/ikun/T7/task3/ME5413_Planning_Project-main/install/setup.zsh;/media/ikun/T7/task3/ME5413_Planning_Project-main/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/media/ikun/T7/task3/ME5413_Planning_Project-main/install" TYPE FILE FILES
    "/media/ikun/T7/task3/ME5413_Planning_Project-main/build/catkin_generated/installspace/setup.zsh"
    "/media/ikun/T7/task3/ME5413_Planning_Project-main/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/media/ikun/T7/task3/ME5413_Planning_Project-main/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/media/ikun/T7/task3/ME5413_Planning_Project-main/install" TYPE FILE FILES "/media/ikun/T7/task3/ME5413_Planning_Project-main/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/media/ikun/T7/task3/ME5413_Planning_Project-main/build/gtest/cmake_install.cmake")
  include("/media/ikun/T7/task3/ME5413_Planning_Project-main/build/flir_camera_driver-kinetic-devel/flir_camera_description/cmake_install.cmake")
  include("/media/ikun/T7/task3/ME5413_Planning_Project-main/build/flir_camera_driver-kinetic-devel/flir_camera_driver/cmake_install.cmake")
  include("/media/ikun/T7/task3/ME5413_Planning_Project-main/build/pointgrey_camera_driver-master/pointgrey_camera_description/cmake_install.cmake")
  include("/media/ikun/T7/task3/ME5413_Planning_Project-main/build/pointgrey_camera_driver-master/statistics_msgs/cmake_install.cmake")
  include("/media/ikun/T7/task3/ME5413_Planning_Project-main/build/pointgrey_camera_driver-master/image_exposure_msgs/cmake_install.cmake")
  include("/media/ikun/T7/task3/ME5413_Planning_Project-main/build/velodyne_simulator/velodyne_description/cmake_install.cmake")
  include("/media/ikun/T7/task3/ME5413_Planning_Project-main/build/velodyne_simulator/velodyne_simulator/cmake_install.cmake")
  include("/media/ikun/T7/task3/ME5413_Planning_Project-main/build/jackal_control/cmake_install.cmake")
  include("/media/ikun/T7/task3/ME5413_Planning_Project-main/build/jackal_description/cmake_install.cmake")
  include("/media/ikun/T7/task3/ME5413_Planning_Project-main/build/jackal_gazebo/cmake_install.cmake")
  include("/media/ikun/T7/task3/ME5413_Planning_Project-main/build/jackal_navigation/cmake_install.cmake")
  include("/media/ikun/T7/task3/ME5413_Planning_Project-main/build/sick_tim-noetic/cmake_install.cmake")
  include("/media/ikun/T7/task3/ME5413_Planning_Project-main/build/interactive_marker_twist_server-kinetic-devel/cmake_install.cmake")
  include("/media/ikun/T7/task3/ME5413_Planning_Project-main/build/robot_localization-melodic-devel/cmake_install.cmake")
  include("/media/ikun/T7/task3/ME5413_Planning_Project-main/build/velodyne_simulator/velodyne_gazebo_plugins/cmake_install.cmake")
  include("/media/ikun/T7/task3/ME5413_Planning_Project-main/build/pointgrey_camera_driver-master/wfov_camera_msgs/cmake_install.cmake")
  include("/media/ikun/T7/task3/ME5413_Planning_Project-main/build/pointgrey_camera_driver-master/pointgrey_camera_driver/cmake_install.cmake")
  include("/media/ikun/T7/task3/ME5413_Planning_Project-main/build/me5413_world/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/media/ikun/T7/task3/ME5413_Planning_Project-main/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
