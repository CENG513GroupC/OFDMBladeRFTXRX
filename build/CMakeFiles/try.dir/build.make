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
include CMakeFiles/try.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/try.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/try.dir/flags.make

CMakeFiles/try.dir/src/tryframing.c.o: CMakeFiles/try.dir/flags.make
CMakeFiles/try.dir/src/tryframing.c.o: ../src/tryframing.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/saim/bladeRF/OFDM/OFDMScheduler-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/try.dir/src/tryframing.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/try.dir/src/tryframing.c.o   -c /home/saim/bladeRF/OFDM/OFDMScheduler-master/src/tryframing.c

CMakeFiles/try.dir/src/tryframing.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/try.dir/src/tryframing.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/saim/bladeRF/OFDM/OFDMScheduler-master/src/tryframing.c > CMakeFiles/try.dir/src/tryframing.c.i

CMakeFiles/try.dir/src/tryframing.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/try.dir/src/tryframing.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/saim/bladeRF/OFDM/OFDMScheduler-master/src/tryframing.c -o CMakeFiles/try.dir/src/tryframing.c.s

CMakeFiles/try.dir/src/tryframing.c.o.requires:

.PHONY : CMakeFiles/try.dir/src/tryframing.c.o.requires

CMakeFiles/try.dir/src/tryframing.c.o.provides: CMakeFiles/try.dir/src/tryframing.c.o.requires
	$(MAKE) -f CMakeFiles/try.dir/build.make CMakeFiles/try.dir/src/tryframing.c.o.provides.build
.PHONY : CMakeFiles/try.dir/src/tryframing.c.o.provides

CMakeFiles/try.dir/src/tryframing.c.o.provides.build: CMakeFiles/try.dir/src/tryframing.c.o


CMakeFiles/try.dir/src/config.c.o: CMakeFiles/try.dir/flags.make
CMakeFiles/try.dir/src/config.c.o: ../src/config.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/saim/bladeRF/OFDM/OFDMScheduler-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/try.dir/src/config.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/try.dir/src/config.c.o   -c /home/saim/bladeRF/OFDM/OFDMScheduler-master/src/config.c

CMakeFiles/try.dir/src/config.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/try.dir/src/config.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/saim/bladeRF/OFDM/OFDMScheduler-master/src/config.c > CMakeFiles/try.dir/src/config.c.i

CMakeFiles/try.dir/src/config.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/try.dir/src/config.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/saim/bladeRF/OFDM/OFDMScheduler-master/src/config.c -o CMakeFiles/try.dir/src/config.c.s

CMakeFiles/try.dir/src/config.c.o.requires:

.PHONY : CMakeFiles/try.dir/src/config.c.o.requires

CMakeFiles/try.dir/src/config.c.o.provides: CMakeFiles/try.dir/src/config.c.o.requires
	$(MAKE) -f CMakeFiles/try.dir/build.make CMakeFiles/try.dir/src/config.c.o.provides.build
.PHONY : CMakeFiles/try.dir/src/config.c.o.provides

CMakeFiles/try.dir/src/config.c.o.provides.build: CMakeFiles/try.dir/src/config.c.o


CMakeFiles/try.dir/src/transceive.c.o: CMakeFiles/try.dir/flags.make
CMakeFiles/try.dir/src/transceive.c.o: ../src/transceive.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/saim/bladeRF/OFDM/OFDMScheduler-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/try.dir/src/transceive.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/try.dir/src/transceive.c.o   -c /home/saim/bladeRF/OFDM/OFDMScheduler-master/src/transceive.c

CMakeFiles/try.dir/src/transceive.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/try.dir/src/transceive.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/saim/bladeRF/OFDM/OFDMScheduler-master/src/transceive.c > CMakeFiles/try.dir/src/transceive.c.i

CMakeFiles/try.dir/src/transceive.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/try.dir/src/transceive.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/saim/bladeRF/OFDM/OFDMScheduler-master/src/transceive.c -o CMakeFiles/try.dir/src/transceive.c.s

CMakeFiles/try.dir/src/transceive.c.o.requires:

.PHONY : CMakeFiles/try.dir/src/transceive.c.o.requires

CMakeFiles/try.dir/src/transceive.c.o.provides: CMakeFiles/try.dir/src/transceive.c.o.requires
	$(MAKE) -f CMakeFiles/try.dir/build.make CMakeFiles/try.dir/src/transceive.c.o.provides.build
.PHONY : CMakeFiles/try.dir/src/transceive.c.o.provides

CMakeFiles/try.dir/src/transceive.c.o.provides.build: CMakeFiles/try.dir/src/transceive.c.o


CMakeFiles/try.dir/src/utils.c.o: CMakeFiles/try.dir/flags.make
CMakeFiles/try.dir/src/utils.c.o: ../src/utils.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/saim/bladeRF/OFDM/OFDMScheduler-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/try.dir/src/utils.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/try.dir/src/utils.c.o   -c /home/saim/bladeRF/OFDM/OFDMScheduler-master/src/utils.c

CMakeFiles/try.dir/src/utils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/try.dir/src/utils.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/saim/bladeRF/OFDM/OFDMScheduler-master/src/utils.c > CMakeFiles/try.dir/src/utils.c.i

CMakeFiles/try.dir/src/utils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/try.dir/src/utils.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/saim/bladeRF/OFDM/OFDMScheduler-master/src/utils.c -o CMakeFiles/try.dir/src/utils.c.s

CMakeFiles/try.dir/src/utils.c.o.requires:

.PHONY : CMakeFiles/try.dir/src/utils.c.o.requires

CMakeFiles/try.dir/src/utils.c.o.provides: CMakeFiles/try.dir/src/utils.c.o.requires
	$(MAKE) -f CMakeFiles/try.dir/build.make CMakeFiles/try.dir/src/utils.c.o.provides.build
.PHONY : CMakeFiles/try.dir/src/utils.c.o.provides

CMakeFiles/try.dir/src/utils.c.o.provides.build: CMakeFiles/try.dir/src/utils.c.o


# Object files for target try
try_OBJECTS = \
"CMakeFiles/try.dir/src/tryframing.c.o" \
"CMakeFiles/try.dir/src/config.c.o" \
"CMakeFiles/try.dir/src/transceive.c.o" \
"CMakeFiles/try.dir/src/utils.c.o"

# External object files for target try
try_EXTERNAL_OBJECTS =

try: CMakeFiles/try.dir/src/tryframing.c.o
try: CMakeFiles/try.dir/src/config.c.o
try: CMakeFiles/try.dir/src/transceive.c.o
try: CMakeFiles/try.dir/src/utils.c.o
try: CMakeFiles/try.dir/build.make
try: CMakeFiles/try.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/saim/bladeRF/OFDM/OFDMScheduler-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable try"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/try.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/try.dir/build: try

.PHONY : CMakeFiles/try.dir/build

CMakeFiles/try.dir/requires: CMakeFiles/try.dir/src/tryframing.c.o.requires
CMakeFiles/try.dir/requires: CMakeFiles/try.dir/src/config.c.o.requires
CMakeFiles/try.dir/requires: CMakeFiles/try.dir/src/transceive.c.o.requires
CMakeFiles/try.dir/requires: CMakeFiles/try.dir/src/utils.c.o.requires

.PHONY : CMakeFiles/try.dir/requires

CMakeFiles/try.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/try.dir/cmake_clean.cmake
.PHONY : CMakeFiles/try.dir/clean

CMakeFiles/try.dir/depend:
	cd /home/saim/bladeRF/OFDM/OFDMScheduler-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/saim/bladeRF/OFDM/OFDMScheduler-master /home/saim/bladeRF/OFDM/OFDMScheduler-master /home/saim/bladeRF/OFDM/OFDMScheduler-master/build /home/saim/bladeRF/OFDM/OFDMScheduler-master/build /home/saim/bladeRF/OFDM/OFDMScheduler-master/build/CMakeFiles/try.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/try.dir/depend

