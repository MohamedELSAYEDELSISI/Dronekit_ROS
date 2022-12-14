# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/drone/m/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/drone/m/build

# Utility rule file for ross_generate_messages_cpp.

# Include the progress variables for this target.
include dronekit_ros/CMakeFiles/ross_generate_messages_cpp.dir/progress.make

dronekit_ros/CMakeFiles/ross_generate_messages_cpp: /home/drone/m/devel/include/ross/vehicle_status.h
dronekit_ros/CMakeFiles/ross_generate_messages_cpp: /home/drone/m/devel/include/ross/pose_service.h
dronekit_ros/CMakeFiles/ross_generate_messages_cpp: /home/drone/m/devel/include/ross/confg_mode.h
dronekit_ros/CMakeFiles/ross_generate_messages_cpp: /home/drone/m/devel/include/ross/land.h
dronekit_ros/CMakeFiles/ross_generate_messages_cpp: /home/drone/m/devel/include/ross/takeoff.h
dronekit_ros/CMakeFiles/ross_generate_messages_cpp: /home/drone/m/devel/include/ross/RTL.h


/home/drone/m/devel/include/ross/vehicle_status.h: /opt/ros/noetic/lib/gencpp/gen_cpp.py
/home/drone/m/devel/include/ross/vehicle_status.h: /home/drone/m/src/dronekit_ros/msg/vehicle_status.msg
/home/drone/m/devel/include/ross/vehicle_status.h: /opt/ros/noetic/share/std_msgs/msg/String.msg
/home/drone/m/devel/include/ross/vehicle_status.h: /opt/ros/noetic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/drone/m/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating C++ code from ross/vehicle_status.msg"
	cd /home/drone/m/src/dronekit_ros && /home/drone/m/build/catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/drone/m/src/dronekit_ros/msg/vehicle_status.msg -Iross:/home/drone/m/src/dronekit_ros/msg -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg -p ross -o /home/drone/m/devel/include/ross -e /opt/ros/noetic/share/gencpp/cmake/..

/home/drone/m/devel/include/ross/pose_service.h: /opt/ros/noetic/lib/gencpp/gen_cpp.py
/home/drone/m/devel/include/ross/pose_service.h: /home/drone/m/src/dronekit_ros/srv/pose_service.srv
/home/drone/m/devel/include/ross/pose_service.h: /opt/ros/noetic/share/geometry_msgs/msg/Point.msg
/home/drone/m/devel/include/ross/pose_service.h: /opt/ros/noetic/share/gencpp/msg.h.template
/home/drone/m/devel/include/ross/pose_service.h: /opt/ros/noetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/drone/m/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating C++ code from ross/pose_service.srv"
	cd /home/drone/m/src/dronekit_ros && /home/drone/m/build/catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/drone/m/src/dronekit_ros/srv/pose_service.srv -Iross:/home/drone/m/src/dronekit_ros/msg -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg -p ross -o /home/drone/m/devel/include/ross -e /opt/ros/noetic/share/gencpp/cmake/..

/home/drone/m/devel/include/ross/confg_mode.h: /opt/ros/noetic/lib/gencpp/gen_cpp.py
/home/drone/m/devel/include/ross/confg_mode.h: /home/drone/m/src/dronekit_ros/srv/confg_mode.srv
/home/drone/m/devel/include/ross/confg_mode.h: /opt/ros/noetic/share/gencpp/msg.h.template
/home/drone/m/devel/include/ross/confg_mode.h: /opt/ros/noetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/drone/m/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating C++ code from ross/confg_mode.srv"
	cd /home/drone/m/src/dronekit_ros && /home/drone/m/build/catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/drone/m/src/dronekit_ros/srv/confg_mode.srv -Iross:/home/drone/m/src/dronekit_ros/msg -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg -p ross -o /home/drone/m/devel/include/ross -e /opt/ros/noetic/share/gencpp/cmake/..

/home/drone/m/devel/include/ross/land.h: /opt/ros/noetic/lib/gencpp/gen_cpp.py
/home/drone/m/devel/include/ross/land.h: /home/drone/m/src/dronekit_ros/srv/land.srv
/home/drone/m/devel/include/ross/land.h: /opt/ros/noetic/share/gencpp/msg.h.template
/home/drone/m/devel/include/ross/land.h: /opt/ros/noetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/drone/m/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating C++ code from ross/land.srv"
	cd /home/drone/m/src/dronekit_ros && /home/drone/m/build/catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/drone/m/src/dronekit_ros/srv/land.srv -Iross:/home/drone/m/src/dronekit_ros/msg -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg -p ross -o /home/drone/m/devel/include/ross -e /opt/ros/noetic/share/gencpp/cmake/..

/home/drone/m/devel/include/ross/takeoff.h: /opt/ros/noetic/lib/gencpp/gen_cpp.py
/home/drone/m/devel/include/ross/takeoff.h: /home/drone/m/src/dronekit_ros/srv/takeoff.srv
/home/drone/m/devel/include/ross/takeoff.h: /opt/ros/noetic/share/gencpp/msg.h.template
/home/drone/m/devel/include/ross/takeoff.h: /opt/ros/noetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/drone/m/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Generating C++ code from ross/takeoff.srv"
	cd /home/drone/m/src/dronekit_ros && /home/drone/m/build/catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/drone/m/src/dronekit_ros/srv/takeoff.srv -Iross:/home/drone/m/src/dronekit_ros/msg -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg -p ross -o /home/drone/m/devel/include/ross -e /opt/ros/noetic/share/gencpp/cmake/..

/home/drone/m/devel/include/ross/RTL.h: /opt/ros/noetic/lib/gencpp/gen_cpp.py
/home/drone/m/devel/include/ross/RTL.h: /home/drone/m/src/dronekit_ros/srv/RTL.srv
/home/drone/m/devel/include/ross/RTL.h: /opt/ros/noetic/share/gencpp/msg.h.template
/home/drone/m/devel/include/ross/RTL.h: /opt/ros/noetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/drone/m/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Generating C++ code from ross/RTL.srv"
	cd /home/drone/m/src/dronekit_ros && /home/drone/m/build/catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/drone/m/src/dronekit_ros/srv/RTL.srv -Iross:/home/drone/m/src/dronekit_ros/msg -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg -p ross -o /home/drone/m/devel/include/ross -e /opt/ros/noetic/share/gencpp/cmake/..

ross_generate_messages_cpp: dronekit_ros/CMakeFiles/ross_generate_messages_cpp
ross_generate_messages_cpp: /home/drone/m/devel/include/ross/vehicle_status.h
ross_generate_messages_cpp: /home/drone/m/devel/include/ross/pose_service.h
ross_generate_messages_cpp: /home/drone/m/devel/include/ross/confg_mode.h
ross_generate_messages_cpp: /home/drone/m/devel/include/ross/land.h
ross_generate_messages_cpp: /home/drone/m/devel/include/ross/takeoff.h
ross_generate_messages_cpp: /home/drone/m/devel/include/ross/RTL.h
ross_generate_messages_cpp: dronekit_ros/CMakeFiles/ross_generate_messages_cpp.dir/build.make

.PHONY : ross_generate_messages_cpp

# Rule to build all files generated by this target.
dronekit_ros/CMakeFiles/ross_generate_messages_cpp.dir/build: ross_generate_messages_cpp

.PHONY : dronekit_ros/CMakeFiles/ross_generate_messages_cpp.dir/build

dronekit_ros/CMakeFiles/ross_generate_messages_cpp.dir/clean:
	cd /home/drone/m/build/dronekit_ros && $(CMAKE_COMMAND) -P CMakeFiles/ross_generate_messages_cpp.dir/cmake_clean.cmake
.PHONY : dronekit_ros/CMakeFiles/ross_generate_messages_cpp.dir/clean

dronekit_ros/CMakeFiles/ross_generate_messages_cpp.dir/depend:
	cd /home/drone/m/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/drone/m/src /home/drone/m/src/dronekit_ros /home/drone/m/build /home/drone/m/build/dronekit_ros /home/drone/m/build/dronekit_ros/CMakeFiles/ross_generate_messages_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dronekit_ros/CMakeFiles/ross_generate_messages_cpp.dir/depend

