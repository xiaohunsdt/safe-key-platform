# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /tmp/tmp.1K8vSt1H77

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /tmp/tmp.1K8vSt1H77/cmake-build-debug-remote

# Include any dependencies generated for this target.
include CMakeFiles/share_key_platform.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/share_key_platform.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/share_key_platform.dir/flags.make

CMakeFiles/share_key_platform.dir/main.cpp.o: CMakeFiles/share_key_platform.dir/flags.make
CMakeFiles/share_key_platform.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.1K8vSt1H77/cmake-build-debug-remote/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/share_key_platform.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/share_key_platform.dir/main.cpp.o -c /tmp/tmp.1K8vSt1H77/main.cpp

CMakeFiles/share_key_platform.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/share_key_platform.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/tmp.1K8vSt1H77/main.cpp > CMakeFiles/share_key_platform.dir/main.cpp.i

CMakeFiles/share_key_platform.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/share_key_platform.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/tmp.1K8vSt1H77/main.cpp -o CMakeFiles/share_key_platform.dir/main.cpp.s

CMakeFiles/share_key_platform.dir/utils/SecKeyShm.cpp.o: CMakeFiles/share_key_platform.dir/flags.make
CMakeFiles/share_key_platform.dir/utils/SecKeyShm.cpp.o: ../utils/SecKeyShm.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.1K8vSt1H77/cmake-build-debug-remote/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/share_key_platform.dir/utils/SecKeyShm.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/share_key_platform.dir/utils/SecKeyShm.cpp.o -c /tmp/tmp.1K8vSt1H77/utils/SecKeyShm.cpp

CMakeFiles/share_key_platform.dir/utils/SecKeyShm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/share_key_platform.dir/utils/SecKeyShm.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/tmp.1K8vSt1H77/utils/SecKeyShm.cpp > CMakeFiles/share_key_platform.dir/utils/SecKeyShm.cpp.i

CMakeFiles/share_key_platform.dir/utils/SecKeyShm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/share_key_platform.dir/utils/SecKeyShm.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/tmp.1K8vSt1H77/utils/SecKeyShm.cpp -o CMakeFiles/share_key_platform.dir/utils/SecKeyShm.cpp.s

CMakeFiles/share_key_platform.dir/proto/network_msg.pb.cc.o: CMakeFiles/share_key_platform.dir/flags.make
CMakeFiles/share_key_platform.dir/proto/network_msg.pb.cc.o: ../proto/network_msg.pb.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.1K8vSt1H77/cmake-build-debug-remote/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/share_key_platform.dir/proto/network_msg.pb.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/share_key_platform.dir/proto/network_msg.pb.cc.o -c /tmp/tmp.1K8vSt1H77/proto/network_msg.pb.cc

CMakeFiles/share_key_platform.dir/proto/network_msg.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/share_key_platform.dir/proto/network_msg.pb.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/tmp.1K8vSt1H77/proto/network_msg.pb.cc > CMakeFiles/share_key_platform.dir/proto/network_msg.pb.cc.i

CMakeFiles/share_key_platform.dir/proto/network_msg.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/share_key_platform.dir/proto/network_msg.pb.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/tmp.1K8vSt1H77/proto/network_msg.pb.cc -o CMakeFiles/share_key_platform.dir/proto/network_msg.pb.cc.s

CMakeFiles/share_key_platform.dir/utils/test.cpp.o: CMakeFiles/share_key_platform.dir/flags.make
CMakeFiles/share_key_platform.dir/utils/test.cpp.o: ../utils/test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.1K8vSt1H77/cmake-build-debug-remote/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/share_key_platform.dir/utils/test.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/share_key_platform.dir/utils/test.cpp.o -c /tmp/tmp.1K8vSt1H77/utils/test.cpp

CMakeFiles/share_key_platform.dir/utils/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/share_key_platform.dir/utils/test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/tmp.1K8vSt1H77/utils/test.cpp > CMakeFiles/share_key_platform.dir/utils/test.cpp.i

CMakeFiles/share_key_platform.dir/utils/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/share_key_platform.dir/utils/test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/tmp.1K8vSt1H77/utils/test.cpp -o CMakeFiles/share_key_platform.dir/utils/test.cpp.s

# Object files for target share_key_platform
share_key_platform_OBJECTS = \
"CMakeFiles/share_key_platform.dir/main.cpp.o" \
"CMakeFiles/share_key_platform.dir/utils/SecKeyShm.cpp.o" \
"CMakeFiles/share_key_platform.dir/proto/network_msg.pb.cc.o" \
"CMakeFiles/share_key_platform.dir/utils/test.cpp.o"

# External object files for target share_key_platform
share_key_platform_EXTERNAL_OBJECTS =

share_key_platform: CMakeFiles/share_key_platform.dir/main.cpp.o
share_key_platform: CMakeFiles/share_key_platform.dir/utils/SecKeyShm.cpp.o
share_key_platform: CMakeFiles/share_key_platform.dir/proto/network_msg.pb.cc.o
share_key_platform: CMakeFiles/share_key_platform.dir/utils/test.cpp.o
share_key_platform: CMakeFiles/share_key_platform.dir/build.make
share_key_platform: CMakeFiles/share_key_platform.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/tmp/tmp.1K8vSt1H77/cmake-build-debug-remote/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable share_key_platform"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/share_key_platform.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/share_key_platform.dir/build: share_key_platform

.PHONY : CMakeFiles/share_key_platform.dir/build

CMakeFiles/share_key_platform.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/share_key_platform.dir/cmake_clean.cmake
.PHONY : CMakeFiles/share_key_platform.dir/clean

CMakeFiles/share_key_platform.dir/depend:
	cd /tmp/tmp.1K8vSt1H77/cmake-build-debug-remote && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/tmp.1K8vSt1H77 /tmp/tmp.1K8vSt1H77 /tmp/tmp.1K8vSt1H77/cmake-build-debug-remote /tmp/tmp.1K8vSt1H77/cmake-build-debug-remote /tmp/tmp.1K8vSt1H77/cmake-build-debug-remote/CMakeFiles/share_key_platform.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/share_key_platform.dir/depend

