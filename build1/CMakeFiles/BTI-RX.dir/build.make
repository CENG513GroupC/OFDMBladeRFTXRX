# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_COMMAND = /opt/local/bin/cmake

# The command to remove a file.
RM = /opt/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/eronur/Library/Mobile Documents/com~apple~CloudDocs/workspace/bladerf-tun-interface"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/eronur/Library/Mobile Documents/com~apple~CloudDocs/workspace/bladerf-tun-interface/build"

# Include any dependencies generated for this target.
include CMakeFiles/BTI-RX.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/BTI-RX.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/BTI-RX.dir/flags.make

CMakeFiles/BTI-RX.dir/src/main_rx.c.o: CMakeFiles/BTI-RX.dir/flags.make
CMakeFiles/BTI-RX.dir/src/main_rx.c.o: ../src/main_rx.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/eronur/Library/Mobile Documents/com~apple~CloudDocs/workspace/bladerf-tun-interface/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/BTI-RX.dir/src/main_rx.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/BTI-RX.dir/src/main_rx.c.o   -c "/Users/eronur/Library/Mobile Documents/com~apple~CloudDocs/workspace/bladerf-tun-interface/src/main_rx.c"

CMakeFiles/BTI-RX.dir/src/main_rx.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/BTI-RX.dir/src/main_rx.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/eronur/Library/Mobile Documents/com~apple~CloudDocs/workspace/bladerf-tun-interface/src/main_rx.c" > CMakeFiles/BTI-RX.dir/src/main_rx.c.i

CMakeFiles/BTI-RX.dir/src/main_rx.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/BTI-RX.dir/src/main_rx.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/eronur/Library/Mobile Documents/com~apple~CloudDocs/workspace/bladerf-tun-interface/src/main_rx.c" -o CMakeFiles/BTI-RX.dir/src/main_rx.c.s

CMakeFiles/BTI-RX.dir/src/main_rx.c.o.requires:

.PHONY : CMakeFiles/BTI-RX.dir/src/main_rx.c.o.requires

CMakeFiles/BTI-RX.dir/src/main_rx.c.o.provides: CMakeFiles/BTI-RX.dir/src/main_rx.c.o.requires
	$(MAKE) -f CMakeFiles/BTI-RX.dir/build.make CMakeFiles/BTI-RX.dir/src/main_rx.c.o.provides.build
.PHONY : CMakeFiles/BTI-RX.dir/src/main_rx.c.o.provides

CMakeFiles/BTI-RX.dir/src/main_rx.c.o.provides.build: CMakeFiles/BTI-RX.dir/src/main_rx.c.o


CMakeFiles/BTI-RX.dir/src/config.c.o: CMakeFiles/BTI-RX.dir/flags.make
CMakeFiles/BTI-RX.dir/src/config.c.o: ../src/config.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/eronur/Library/Mobile Documents/com~apple~CloudDocs/workspace/bladerf-tun-interface/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/BTI-RX.dir/src/config.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/BTI-RX.dir/src/config.c.o   -c "/Users/eronur/Library/Mobile Documents/com~apple~CloudDocs/workspace/bladerf-tun-interface/src/config.c"

CMakeFiles/BTI-RX.dir/src/config.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/BTI-RX.dir/src/config.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/eronur/Library/Mobile Documents/com~apple~CloudDocs/workspace/bladerf-tun-interface/src/config.c" > CMakeFiles/BTI-RX.dir/src/config.c.i

CMakeFiles/BTI-RX.dir/src/config.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/BTI-RX.dir/src/config.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/eronur/Library/Mobile Documents/com~apple~CloudDocs/workspace/bladerf-tun-interface/src/config.c" -o CMakeFiles/BTI-RX.dir/src/config.c.s

CMakeFiles/BTI-RX.dir/src/config.c.o.requires:

.PHONY : CMakeFiles/BTI-RX.dir/src/config.c.o.requires

CMakeFiles/BTI-RX.dir/src/config.c.o.provides: CMakeFiles/BTI-RX.dir/src/config.c.o.requires
	$(MAKE) -f CMakeFiles/BTI-RX.dir/build.make CMakeFiles/BTI-RX.dir/src/config.c.o.provides.build
.PHONY : CMakeFiles/BTI-RX.dir/src/config.c.o.provides

CMakeFiles/BTI-RX.dir/src/config.c.o.provides.build: CMakeFiles/BTI-RX.dir/src/config.c.o


CMakeFiles/BTI-RX.dir/src/transceive.c.o: CMakeFiles/BTI-RX.dir/flags.make
CMakeFiles/BTI-RX.dir/src/transceive.c.o: ../src/transceive.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/eronur/Library/Mobile Documents/com~apple~CloudDocs/workspace/bladerf-tun-interface/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/BTI-RX.dir/src/transceive.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/BTI-RX.dir/src/transceive.c.o   -c "/Users/eronur/Library/Mobile Documents/com~apple~CloudDocs/workspace/bladerf-tun-interface/src/transceive.c"

CMakeFiles/BTI-RX.dir/src/transceive.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/BTI-RX.dir/src/transceive.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/eronur/Library/Mobile Documents/com~apple~CloudDocs/workspace/bladerf-tun-interface/src/transceive.c" > CMakeFiles/BTI-RX.dir/src/transceive.c.i

CMakeFiles/BTI-RX.dir/src/transceive.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/BTI-RX.dir/src/transceive.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/eronur/Library/Mobile Documents/com~apple~CloudDocs/workspace/bladerf-tun-interface/src/transceive.c" -o CMakeFiles/BTI-RX.dir/src/transceive.c.s

CMakeFiles/BTI-RX.dir/src/transceive.c.o.requires:

.PHONY : CMakeFiles/BTI-RX.dir/src/transceive.c.o.requires

CMakeFiles/BTI-RX.dir/src/transceive.c.o.provides: CMakeFiles/BTI-RX.dir/src/transceive.c.o.requires
	$(MAKE) -f CMakeFiles/BTI-RX.dir/build.make CMakeFiles/BTI-RX.dir/src/transceive.c.o.provides.build
.PHONY : CMakeFiles/BTI-RX.dir/src/transceive.c.o.provides

CMakeFiles/BTI-RX.dir/src/transceive.c.o.provides.build: CMakeFiles/BTI-RX.dir/src/transceive.c.o


CMakeFiles/BTI-RX.dir/src/utils.c.o: CMakeFiles/BTI-RX.dir/flags.make
CMakeFiles/BTI-RX.dir/src/utils.c.o: ../src/utils.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/eronur/Library/Mobile Documents/com~apple~CloudDocs/workspace/bladerf-tun-interface/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/BTI-RX.dir/src/utils.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/BTI-RX.dir/src/utils.c.o   -c "/Users/eronur/Library/Mobile Documents/com~apple~CloudDocs/workspace/bladerf-tun-interface/src/utils.c"

CMakeFiles/BTI-RX.dir/src/utils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/BTI-RX.dir/src/utils.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/eronur/Library/Mobile Documents/com~apple~CloudDocs/workspace/bladerf-tun-interface/src/utils.c" > CMakeFiles/BTI-RX.dir/src/utils.c.i

CMakeFiles/BTI-RX.dir/src/utils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/BTI-RX.dir/src/utils.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/eronur/Library/Mobile Documents/com~apple~CloudDocs/workspace/bladerf-tun-interface/src/utils.c" -o CMakeFiles/BTI-RX.dir/src/utils.c.s

CMakeFiles/BTI-RX.dir/src/utils.c.o.requires:

.PHONY : CMakeFiles/BTI-RX.dir/src/utils.c.o.requires

CMakeFiles/BTI-RX.dir/src/utils.c.o.provides: CMakeFiles/BTI-RX.dir/src/utils.c.o.requires
	$(MAKE) -f CMakeFiles/BTI-RX.dir/build.make CMakeFiles/BTI-RX.dir/src/utils.c.o.provides.build
.PHONY : CMakeFiles/BTI-RX.dir/src/utils.c.o.provides

CMakeFiles/BTI-RX.dir/src/utils.c.o.provides.build: CMakeFiles/BTI-RX.dir/src/utils.c.o


# Object files for target BTI-RX
BTI__RX_OBJECTS = \
"CMakeFiles/BTI-RX.dir/src/main_rx.c.o" \
"CMakeFiles/BTI-RX.dir/src/config.c.o" \
"CMakeFiles/BTI-RX.dir/src/transceive.c.o" \
"CMakeFiles/BTI-RX.dir/src/utils.c.o"

# External object files for target BTI-RX
BTI__RX_EXTERNAL_OBJECTS =

BTI-RX: CMakeFiles/BTI-RX.dir/src/main_rx.c.o
BTI-RX: CMakeFiles/BTI-RX.dir/src/config.c.o
BTI-RX: CMakeFiles/BTI-RX.dir/src/transceive.c.o
BTI-RX: CMakeFiles/BTI-RX.dir/src/utils.c.o
BTI-RX: CMakeFiles/BTI-RX.dir/build.make
BTI-RX: CMakeFiles/BTI-RX.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/eronur/Library/Mobile Documents/com~apple~CloudDocs/workspace/bladerf-tun-interface/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable BTI-RX"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/BTI-RX.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/BTI-RX.dir/build: BTI-RX

.PHONY : CMakeFiles/BTI-RX.dir/build

CMakeFiles/BTI-RX.dir/requires: CMakeFiles/BTI-RX.dir/src/main_rx.c.o.requires
CMakeFiles/BTI-RX.dir/requires: CMakeFiles/BTI-RX.dir/src/config.c.o.requires
CMakeFiles/BTI-RX.dir/requires: CMakeFiles/BTI-RX.dir/src/transceive.c.o.requires
CMakeFiles/BTI-RX.dir/requires: CMakeFiles/BTI-RX.dir/src/utils.c.o.requires

.PHONY : CMakeFiles/BTI-RX.dir/requires

CMakeFiles/BTI-RX.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/BTI-RX.dir/cmake_clean.cmake
.PHONY : CMakeFiles/BTI-RX.dir/clean

CMakeFiles/BTI-RX.dir/depend:
	cd "/Users/eronur/Library/Mobile Documents/com~apple~CloudDocs/workspace/bladerf-tun-interface/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/eronur/Library/Mobile Documents/com~apple~CloudDocs/workspace/bladerf-tun-interface" "/Users/eronur/Library/Mobile Documents/com~apple~CloudDocs/workspace/bladerf-tun-interface" "/Users/eronur/Library/Mobile Documents/com~apple~CloudDocs/workspace/bladerf-tun-interface/build" "/Users/eronur/Library/Mobile Documents/com~apple~CloudDocs/workspace/bladerf-tun-interface/build" "/Users/eronur/Library/Mobile Documents/com~apple~CloudDocs/workspace/bladerf-tun-interface/build/CMakeFiles/BTI-RX.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/BTI-RX.dir/depend

