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

# Utility rule file for ross_generate_messages.

# Include the progress variables for this target.
include dronekit_ros/CMakeFiles/ross_generate_messages.dir/progress.make

ross_generate_messages: dronekit_ros/CMakeFiles/ross_generate_messages.dir/build.make

.PHONY : ross_generate_messages

# Rule to build all files generated by this target.
dronekit_ros/CMakeFiles/ross_generate_messages.dir/build: ross_generate_messages

.PHONY : dronekit_ros/CMakeFiles/ross_generate_messages.dir/build

dronekit_ros/CMakeFiles/ross_generate_messages.dir/clean:
	cd /home/drone/m/build/dronekit_ros && $(CMAKE_COMMAND) -P CMakeFiles/ross_generate_messages.dir/cmake_clean.cmake
.PHONY : dronekit_ros/CMakeFiles/ross_generate_messages.dir/clean

dronekit_ros/CMakeFiles/ross_generate_messages.dir/depend:
	cd /home/drone/m/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/drone/m/src /home/drone/m/src/dronekit_ros /home/drone/m/build /home/drone/m/build/dronekit_ros /home/drone/m/build/dronekit_ros/CMakeFiles/ross_generate_messages.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dronekit_ros/CMakeFiles/ross_generate_messages.dir/depend

