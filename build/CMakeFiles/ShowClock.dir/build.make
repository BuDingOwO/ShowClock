# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.27

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

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = D:\Programs\CMake\bin\cmake.exe

# The command to remove a file.
RM = D:\Programs\CMake\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\ConBl\Desktop\ShowClock

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\ConBl\Desktop\ShowClock\build

# Include any dependencies generated for this target.
include CMakeFiles/ShowClock.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ShowClock.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ShowClock.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ShowClock.dir/flags.make

CMakeFiles/ShowClock.dir/Main.cpp.obj: CMakeFiles/ShowClock.dir/flags.make
CMakeFiles/ShowClock.dir/Main.cpp.obj: CMakeFiles/ShowClock.dir/includes_CXX.rsp
CMakeFiles/ShowClock.dir/Main.cpp.obj: C:/Users/ConBl/Desktop/ShowClock/Main.cpp
CMakeFiles/ShowClock.dir/Main.cpp.obj: CMakeFiles/ShowClock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\ConBl\Desktop\ShowClock\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ShowClock.dir/Main.cpp.obj"
	D:\Programs\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ShowClock.dir/Main.cpp.obj -MF CMakeFiles\ShowClock.dir\Main.cpp.obj.d -o CMakeFiles\ShowClock.dir\Main.cpp.obj -c C:\Users\ConBl\Desktop\ShowClock\Main.cpp

CMakeFiles/ShowClock.dir/Main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ShowClock.dir/Main.cpp.i"
	D:\Programs\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\ConBl\Desktop\ShowClock\Main.cpp > CMakeFiles\ShowClock.dir\Main.cpp.i

CMakeFiles/ShowClock.dir/Main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ShowClock.dir/Main.cpp.s"
	D:\Programs\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\ConBl\Desktop\ShowClock\Main.cpp -o CMakeFiles\ShowClock.dir\Main.cpp.s

# Object files for target ShowClock
ShowClock_OBJECTS = \
"CMakeFiles/ShowClock.dir/Main.cpp.obj"

# External object files for target ShowClock
ShowClock_EXTERNAL_OBJECTS =

ShowClock.exe: CMakeFiles/ShowClock.dir/Main.cpp.obj
ShowClock.exe: CMakeFiles/ShowClock.dir/build.make
ShowClock.exe: C:/Users/ConBl/Desktop/ShowClock/lib/libeasyx.a
ShowClock.exe: CMakeFiles/ShowClock.dir/linkLibs.rsp
ShowClock.exe: CMakeFiles/ShowClock.dir/objects1.rsp
ShowClock.exe: CMakeFiles/ShowClock.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\ConBl\Desktop\ShowClock\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ShowClock.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\ShowClock.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ShowClock.dir/build: ShowClock.exe
.PHONY : CMakeFiles/ShowClock.dir/build

CMakeFiles/ShowClock.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\ShowClock.dir\cmake_clean.cmake
.PHONY : CMakeFiles/ShowClock.dir/clean

CMakeFiles/ShowClock.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\ConBl\Desktop\ShowClock C:\Users\ConBl\Desktop\ShowClock C:\Users\ConBl\Desktop\ShowClock\build C:\Users\ConBl\Desktop\ShowClock\build C:\Users\ConBl\Desktop\ShowClock\build\CMakeFiles\ShowClock.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/ShowClock.dir/depend

