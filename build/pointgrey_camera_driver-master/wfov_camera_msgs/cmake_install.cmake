# Install script for directory: /media/ikun/T7/task3/ME5413_Planning_Project-main/src/pointgrey_camera_driver-master/wfov_camera_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wfov_camera_msgs/msg" TYPE FILE FILES
    "/media/ikun/T7/task3/ME5413_Planning_Project-main/src/pointgrey_camera_driver-master/wfov_camera_msgs/msg/WFOVCompressedImage.msg"
    "/media/ikun/T7/task3/ME5413_Planning_Project-main/src/pointgrey_camera_driver-master/wfov_camera_msgs/msg/WFOVImage.msg"
    "/media/ikun/T7/task3/ME5413_Planning_Project-main/src/pointgrey_camera_driver-master/wfov_camera_msgs/msg/WFOVTrigger.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wfov_camera_msgs/cmake" TYPE FILE FILES "/media/ikun/T7/task3/ME5413_Planning_Project-main/build/pointgrey_camera_driver-master/wfov_camera_msgs/catkin_generated/installspace/wfov_camera_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/media/ikun/T7/task3/ME5413_Planning_Project-main/devel/include/wfov_camera_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/media/ikun/T7/task3/ME5413_Planning_Project-main/devel/share/roseus/ros/wfov_camera_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/media/ikun/T7/task3/ME5413_Planning_Project-main/devel/share/common-lisp/ros/wfov_camera_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/media/ikun/T7/task3/ME5413_Planning_Project-main/devel/share/gennodejs/ros/wfov_camera_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/media/ikun/T7/task3/ME5413_Planning_Project-main/devel/lib/python2.7/dist-packages/wfov_camera_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/media/ikun/T7/task3/ME5413_Planning_Project-main/devel/lib/python2.7/dist-packages/wfov_camera_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/media/ikun/T7/task3/ME5413_Planning_Project-main/build/pointgrey_camera_driver-master/wfov_camera_msgs/catkin_generated/installspace/wfov_camera_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wfov_camera_msgs/cmake" TYPE FILE FILES "/media/ikun/T7/task3/ME5413_Planning_Project-main/build/pointgrey_camera_driver-master/wfov_camera_msgs/catkin_generated/installspace/wfov_camera_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wfov_camera_msgs/cmake" TYPE FILE FILES
    "/media/ikun/T7/task3/ME5413_Planning_Project-main/build/pointgrey_camera_driver-master/wfov_camera_msgs/catkin_generated/installspace/wfov_camera_msgsConfig.cmake"
    "/media/ikun/T7/task3/ME5413_Planning_Project-main/build/pointgrey_camera_driver-master/wfov_camera_msgs/catkin_generated/installspace/wfov_camera_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wfov_camera_msgs" TYPE FILE FILES "/media/ikun/T7/task3/ME5413_Planning_Project-main/src/pointgrey_camera_driver-master/wfov_camera_msgs/package.xml")
endif()

