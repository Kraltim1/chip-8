# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_SOURCE_DIR = /home/tim/Desktop/chip-8-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tim/Desktop/chip-8-master/build

# Include any dependencies generated for this target.
include CMakeFiles/unittest.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/unittest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/unittest.dir/flags.make

CMakeFiles/unittest.dir/tests/main.c.o: CMakeFiles/unittest.dir/flags.make
CMakeFiles/unittest.dir/tests/main.c.o: ../tests/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tim/Desktop/chip-8-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/unittest.dir/tests/main.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/unittest.dir/tests/main.c.o   -c /home/tim/Desktop/chip-8-master/tests/main.c

CMakeFiles/unittest.dir/tests/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/unittest.dir/tests/main.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tim/Desktop/chip-8-master/tests/main.c > CMakeFiles/unittest.dir/tests/main.c.i

CMakeFiles/unittest.dir/tests/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/unittest.dir/tests/main.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tim/Desktop/chip-8-master/tests/main.c -o CMakeFiles/unittest.dir/tests/main.c.s

CMakeFiles/unittest.dir/tests/main.c.o.requires:

.PHONY : CMakeFiles/unittest.dir/tests/main.c.o.requires

CMakeFiles/unittest.dir/tests/main.c.o.provides: CMakeFiles/unittest.dir/tests/main.c.o.requires
	$(MAKE) -f CMakeFiles/unittest.dir/build.make CMakeFiles/unittest.dir/tests/main.c.o.provides.build
.PHONY : CMakeFiles/unittest.dir/tests/main.c.o.provides

CMakeFiles/unittest.dir/tests/main.c.o.provides.build: CMakeFiles/unittest.dir/tests/main.c.o


# Object files for target unittest
unittest_OBJECTS = \
"CMakeFiles/unittest.dir/tests/main.c.o"

# External object files for target unittest
unittest_EXTERNAL_OBJECTS =

unittest: CMakeFiles/unittest.dir/tests/main.c.o
unittest: CMakeFiles/unittest.dir/build.make
unittest: external/libunity.a
unittest: libCHIP8lib.a
unittest: CMakeFiles/unittest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tim/Desktop/chip-8-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable unittest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/unittest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/unittest.dir/build: unittest

.PHONY : CMakeFiles/unittest.dir/build

CMakeFiles/unittest.dir/requires: CMakeFiles/unittest.dir/tests/main.c.o.requires

.PHONY : CMakeFiles/unittest.dir/requires

CMakeFiles/unittest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/unittest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/unittest.dir/clean

CMakeFiles/unittest.dir/depend:
	cd /home/tim/Desktop/chip-8-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tim/Desktop/chip-8-master /home/tim/Desktop/chip-8-master /home/tim/Desktop/chip-8-master/build /home/tim/Desktop/chip-8-master/build /home/tim/Desktop/chip-8-master/build/CMakeFiles/unittest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/unittest.dir/depend

