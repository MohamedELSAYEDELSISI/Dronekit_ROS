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

# Utility rule file for ross_genlisp.

# Include the progress variables for this target.
include ross/CMakeFiles/ross_genlisp.dir/progress.make

ross_genlisp: ross/CMakeFiles/ross_genlisp.dir/build.make

.PHONY : ross_genlisp

# Rule to build all files generated by this target.
ross/CMakeFiles/ross_genlisp.dir/build: ross_genlisp

.PHONY : ross/CMakeFiles/ross_genlisp.dir/build

ross/CMakeFiles/ross_genlisp.dir/clean:
	cd /home/drone/m/build/ross && $(CMAKE_COMMAND) -P CMakeFiles/ross_genlisp.dir/cmake_clean.cmake
.PHONY : ross/CMakeFiles/ross_genlisp.dir/clean

ross/CMakeFiles/ross_genlisp.dir/depend:
	cd /home/drone/m/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/drone/m/src /home/drone/m/src/ross /home/drone/m/build /home/drone/m/build/ross /home/drone/m/build/ross/CMakeFiles/ross_genlisp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ross/CMakeFiles/ross_genlisp.dir/depend

