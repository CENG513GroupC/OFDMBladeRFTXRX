# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/saim/bladeRF/OFDM/OFDMScheduler-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/saim/bladeRF/OFDM/OFDMScheduler-master/build

# Include any dependencies generated for this target.
include CMakeFiles/frameexperiment.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/frameexperiment.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/frameexperiment.dir/flags.make

CMakeFiles/frameexperiment.dir/src/frameexperimenting.c.o: CMakeFiles/frameexperiment.dir/flags.make
CMakeFiles/frameexperiment.dir/src/frameexperimenting.c.o: ../src/frameexperimenting.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/saim/bladeRF/OFDM/OFDMScheduler-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/frameexperiment.dir/src/frameexperimenting.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/frameexperiment.dir/src/frameexperimenting.c.o   -c /home/saim/bladeRF/OFDM/OFDMScheduler-master/src/frameexperimenting.c

CMakeFiles/frameexperiment.dir/src/frameexperimenting.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/frameexperiment.dir/src/frameexperimenting.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/saim/bladeRF/OFDM/OFDMScheduler-master/src/frameexperimenting.c > CMakeFiles/frameexperiment.dir/src/frameexperimenting.c.i

CMakeFiles/frameexperiment.dir/src/frameexperimenting.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/frameexperiment.dir/src/frameexperimenting.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/saim/bladeRF/OFDM/OFDMScheduler-master/src/frameexperimenting.c -o CMakeFiles/frameexperiment.dir/src/frameexperimenting.c.s

CMakeFiles/frameexperiment.dir/src/frameexperimenting.c.o.requires:

.PHONY : CMakeFiles/frameexperiment.dir/src/frameexperimenting.c.o.requires

CMakeFiles/frameexperiment.dir/src/frameexperimenting.c.o.provides: CMakeFiles/frameexperiment.dir/src/frameexperimenting.c.o.requires
	$(MAKE) -f CMakeFiles/frameexperiment.dir/build.make CMakeFiles/frameexperiment.dir/src/frameexperimenting.c.o.provides.build
.PHONY : CMakeFiles/frameexperiment.dir/src/frameexperimenting.c.o.provides

CMakeFiles/frameexperiment.dir/src/frameexperimenting.c.o.provides.build: CMakeFiles/frameexperiment.dir/src/frameexperimenting.c.o


CMakeFiles/frameexperiment.dir/src/config.c.o: CMakeFiles/frameexperiment.dir/flags.make
CMakeFiles/frameexperiment.dir/src/config.c.o: ../src/config.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/saim/bladeRF/OFDM/OFDMScheduler-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/frameexperiment.dir/src/config.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/frameexperiment.dir/src/config.c.o   -c /home/saim/bladeRF/OFDM/OFDMScheduler-master/src/config.c

CMakeFiles/frameexperiment.dir/src/config.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/frameexperiment.dir/src/config.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/saim/bladeRF/OFDM/OFDMScheduler-master/src/config.c > CMakeFiles/frameexperiment.dir/src/config.c.i

CMakeFiles/frameexperiment.dir/src/config.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/frameexperiment.dir/src/config.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/saim/bladeRF/OFDM/OFDMScheduler-master/src/config.c -o CMakeFiles/frameexperiment.dir/src/config.c.s

CMakeFiles/frameexperiment.dir/src/config.c.o.requires:

.PHONY : CMakeFiles/frameexperiment.dir/src/config.c.o.requires

CMakeFiles/frameexperiment.dir/src/config.c.o.provides: CMakeFiles/frameexperiment.dir/src/config.c.o.requires
	$(MAKE) -f CMakeFiles/frameexperiment.dir/build.make CMakeFiles/frameexperiment.dir/src/config.c.o.provides.build
.PHONY : CMakeFiles/frameexperiment.dir/src/config.c.o.provides

CMakeFiles/frameexperiment.dir/src/config.c.o.provides.build: CMakeFiles/frameexperiment.dir/src/config.c.o


CMakeFiles/frameexperiment.dir/src/transceive.c.o: CMakeFiles/frameexperiment.dir/flags.make
CMakeFiles/frameexperiment.dir/src/transceive.c.o: ../src/transceive.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/saim/bladeRF/OFDM/OFDMScheduler-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/frameexperiment.dir/src/transceive.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/frameexperiment.dir/src/transceive.c.o   -c /home/saim/bladeRF/OFDM/OFDMScheduler-master/src/transceive.c

CMakeFiles/frameexperiment.dir/src/transceive.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/frameexperiment.dir/src/transceive.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/saim/bladeRF/OFDM/OFDMScheduler-master/src/transceive.c > CMakeFiles/frameexperiment.dir/src/transceive.c.i

CMakeFiles/frameexperiment.dir/src/transceive.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/frameexperiment.dir/src/transceive.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/saim/bladeRF/OFDM/OFDMScheduler-master/src/transceive.c -o CMakeFiles/frameexperiment.dir/src/transceive.c.s

CMakeFiles/frameexperiment.dir/src/transceive.c.o.requires:

.PHONY : CMakeFiles/frameexperiment.dir/src/transceive.c.o.requires

CMakeFiles/frameexperiment.dir/src/transceive.c.o.provides: CMakeFiles/frameexperiment.dir/src/transceive.c.o.requires
	$(MAKE) -f CMakeFiles/frameexperiment.dir/build.make CMakeFiles/frameexperiment.dir/src/transceive.c.o.provides.build
.PHONY : CMakeFiles/frameexperiment.dir/src/transceive.c.o.provides

CMakeFiles/frameexperiment.dir/src/transceive.c.o.provides.build: CMakeFiles/frameexperiment.dir/src/transceive.c.o


CMakeFiles/frameexperiment.dir/src/utils.c.o: CMakeFiles/frameexperiment.dir/flags.make
CMakeFiles/frameexperiment.dir/src/utils.c.o: ../src/utils.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/saim/bladeRF/OFDM/OFDMScheduler-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/frameexperiment.dir/src/utils.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/frameexperiment.dir/src/utils.c.o   -c /home/saim/bladeRF/OFDM/OFDMScheduler-master/src/utils.c

CMakeFiles/frameexperiment.dir/src/utils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/frameexperiment.dir/src/utils.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/saim/bladeRF/OFDM/OFDMScheduler-master/src/utils.c > CMakeFiles/frameexperiment.dir/src/utils.c.i

CMakeFiles/frameexperiment.dir/src/utils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/frameexperiment.dir/src/utils.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/saim/bladeRF/OFDM/OFDMScheduler-master/src/utils.c -o CMakeFiles/frameexperiment.dir/src/utils.c.s

CMakeFiles/frameexperiment.dir/src/utils.c.o.requires:

.PHONY : CMakeFiles/frameexperiment.dir/src/utils.c.o.requires

CMakeFiles/frameexperiment.dir/src/utils.c.o.provides: CMakeFiles/frameexperiment.dir/src/utils.c.o.requires
	$(MAKE) -f CMakeFiles/frameexperiment.dir/build.make CMakeFiles/frameexperiment.dir/src/utils.c.o.provides.build
.PHONY : CMakeFiles/frameexperiment.dir/src/utils.c.o.provides

CMakeFiles/frameexperiment.dir/src/utils.c.o.provides.build: CMakeFiles/frameexperiment.dir/src/utils.c.o


# Object files for target frameexperiment
frameexperiment_OBJECTS = \
"CMakeFiles/frameexperiment.dir/src/frameexperimenting.c.o" \
"CMakeFiles/frameexperiment.dir/src/config.c.o" \
"CMakeFiles/frameexperiment.dir/src/transceive.c.o" \
"CMakeFiles/frameexperiment.dir/src/utils.c.o"

# External object files for target frameexperiment
frameexperiment_EXTERNAL_OBJECTS =

frameexperiment: CMakeFiles/frameexperiment.dir/src/frameexperimenting.c.o
frameexperiment: CMakeFiles/frameexperiment.dir/src/config.c.o
frameexperiment: CMakeFiles/frameexperiment.dir/src/transceive.c.o
frameexperiment: CMakeFiles/frameexperiment.dir/src/utils.c.o
frameexperiment: CMakeFiles/frameexperiment.dir/build.make
frameexperiment: CMakeFiles/frameexperiment.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/saim/bladeRF/OFDM/OFDMScheduler-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable frameexperiment"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/frameexperiment.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/frameexperiment.dir/build: frameexperiment

.PHONY : CMakeFiles/frameexperiment.dir/build

CMakeFiles/frameexperiment.dir/requires: CMakeFiles/frameexperiment.dir/src/frameexperimenting.c.o.requires
CMakeFiles/frameexperiment.dir/requires: CMakeFiles/frameexperiment.dir/src/config.c.o.requires
CMakeFiles/frameexperiment.dir/requires: CMakeFiles/frameexperiment.dir/src/transceive.c.o.requires
CMakeFiles/frameexperiment.dir/requires: CMakeFiles/frameexperiment.dir/src/utils.c.o.requires

.PHONY : CMakeFiles/frameexperiment.dir/requires

CMakeFiles/frameexperiment.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/frameexperiment.dir/cmake_clean.cmake
.PHONY : CMakeFiles/frameexperiment.dir/clean

CMakeFiles/frameexperiment.dir/depend:
	cd /home/saim/bladeRF/OFDM/OFDMScheduler-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/saim/bladeRF/OFDM/OFDMScheduler-master /home/saim/bladeRF/OFDM/OFDMScheduler-master /home/saim/bladeRF/OFDM/OFDMScheduler-master/build /home/saim/bladeRF/OFDM/OFDMScheduler-master/build /home/saim/bladeRF/OFDM/OFDMScheduler-master/build/CMakeFiles/frameexperiment.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/frameexperiment.dir/depend

