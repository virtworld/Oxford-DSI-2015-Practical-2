# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /auto/users/ms14jl/Documents/db/practical2/BufMgr

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /auto/users/ms14jl/Documents/db/practical2/BufMgr-bin

# Include any dependencies generated for this target.
include CMakeFiles/minibase-bufmgr.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/minibase-bufmgr.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/minibase-bufmgr.dir/flags.make

CMakeFiles/minibase-bufmgr.dir/main.o: CMakeFiles/minibase-bufmgr.dir/flags.make
CMakeFiles/minibase-bufmgr.dir/main.o: /auto/users/ms14jl/Documents/db/practical2/BufMgr/main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /auto/users/ms14jl/Documents/db/practical2/BufMgr-bin/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/minibase-bufmgr.dir/main.o"
	/usr/lib64/ccache/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/minibase-bufmgr.dir/main.o -c /auto/users/ms14jl/Documents/db/practical2/BufMgr/main.cpp

CMakeFiles/minibase-bufmgr.dir/main.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/minibase-bufmgr.dir/main.i"
	/usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /auto/users/ms14jl/Documents/db/practical2/BufMgr/main.cpp > CMakeFiles/minibase-bufmgr.dir/main.i

CMakeFiles/minibase-bufmgr.dir/main.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/minibase-bufmgr.dir/main.s"
	/usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /auto/users/ms14jl/Documents/db/practical2/BufMgr/main.cpp -o CMakeFiles/minibase-bufmgr.dir/main.s

CMakeFiles/minibase-bufmgr.dir/main.o.requires:
.PHONY : CMakeFiles/minibase-bufmgr.dir/main.o.requires

CMakeFiles/minibase-bufmgr.dir/main.o.provides: CMakeFiles/minibase-bufmgr.dir/main.o.requires
	$(MAKE) -f CMakeFiles/minibase-bufmgr.dir/build.make CMakeFiles/minibase-bufmgr.dir/main.o.provides.build
.PHONY : CMakeFiles/minibase-bufmgr.dir/main.o.provides

CMakeFiles/minibase-bufmgr.dir/main.o.provides.build: CMakeFiles/minibase-bufmgr.dir/main.o

CMakeFiles/minibase-bufmgr.dir/test.o: CMakeFiles/minibase-bufmgr.dir/flags.make
CMakeFiles/minibase-bufmgr.dir/test.o: /auto/users/ms14jl/Documents/db/practical2/BufMgr/test.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /auto/users/ms14jl/Documents/db/practical2/BufMgr-bin/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/minibase-bufmgr.dir/test.o"
	/usr/lib64/ccache/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/minibase-bufmgr.dir/test.o -c /auto/users/ms14jl/Documents/db/practical2/BufMgr/test.cpp

CMakeFiles/minibase-bufmgr.dir/test.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/minibase-bufmgr.dir/test.i"
	/usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /auto/users/ms14jl/Documents/db/practical2/BufMgr/test.cpp > CMakeFiles/minibase-bufmgr.dir/test.i

CMakeFiles/minibase-bufmgr.dir/test.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/minibase-bufmgr.dir/test.s"
	/usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /auto/users/ms14jl/Documents/db/practical2/BufMgr/test.cpp -o CMakeFiles/minibase-bufmgr.dir/test.s

CMakeFiles/minibase-bufmgr.dir/test.o.requires:
.PHONY : CMakeFiles/minibase-bufmgr.dir/test.o.requires

CMakeFiles/minibase-bufmgr.dir/test.o.provides: CMakeFiles/minibase-bufmgr.dir/test.o.requires
	$(MAKE) -f CMakeFiles/minibase-bufmgr.dir/build.make CMakeFiles/minibase-bufmgr.dir/test.o.provides.build
.PHONY : CMakeFiles/minibase-bufmgr.dir/test.o.provides

CMakeFiles/minibase-bufmgr.dir/test.o.provides.build: CMakeFiles/minibase-bufmgr.dir/test.o

# Object files for target minibase-bufmgr
minibase__bufmgr_OBJECTS = \
"CMakeFiles/minibase-bufmgr.dir/main.o" \
"CMakeFiles/minibase-bufmgr.dir/test.o"

# External object files for target minibase-bufmgr
minibase__bufmgr_EXTERNAL_OBJECTS =

minibase-bufmgr: CMakeFiles/minibase-bufmgr.dir/main.o
minibase-bufmgr: CMakeFiles/minibase-bufmgr.dir/test.o
minibase-bufmgr: CMakeFiles/minibase-bufmgr.dir/build.make
minibase-bufmgr: /users/ms14jl/Documents/db/practical2/BufMgr/lib/libjoins.a
minibase-bufmgr: /users/ms14jl/Documents/db/practical2/BufMgr/lib/libbtree.a
minibase-bufmgr: /users/ms14jl/Documents/db/practical2/BufMgr/lib/libspacemgr.a
minibase-bufmgr: bufmgr/libbufmgr.a
minibase-bufmgr: /users/ms14jl/Documents/db/practical2/BufMgr/lib/libspacemgr.a
minibase-bufmgr: /users/ms14jl/Documents/db/practical2/BufMgr/lib/libglobaldefs.a
minibase-bufmgr: /users/ms14jl/Documents/db/practical2/BufMgr/lib/libspacemgr.a
minibase-bufmgr: /users/ms14jl/Documents/db/practical2/BufMgr/lib/libglobaldefs.a
minibase-bufmgr: CMakeFiles/minibase-bufmgr.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable minibase-bufmgr"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/minibase-bufmgr.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/minibase-bufmgr.dir/build: minibase-bufmgr
.PHONY : CMakeFiles/minibase-bufmgr.dir/build

CMakeFiles/minibase-bufmgr.dir/requires: CMakeFiles/minibase-bufmgr.dir/main.o.requires
CMakeFiles/minibase-bufmgr.dir/requires: CMakeFiles/minibase-bufmgr.dir/test.o.requires
.PHONY : CMakeFiles/minibase-bufmgr.dir/requires

CMakeFiles/minibase-bufmgr.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/minibase-bufmgr.dir/cmake_clean.cmake
.PHONY : CMakeFiles/minibase-bufmgr.dir/clean

CMakeFiles/minibase-bufmgr.dir/depend:
	cd /auto/users/ms14jl/Documents/db/practical2/BufMgr-bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /auto/users/ms14jl/Documents/db/practical2/BufMgr /auto/users/ms14jl/Documents/db/practical2/BufMgr /auto/users/ms14jl/Documents/db/practical2/BufMgr-bin /auto/users/ms14jl/Documents/db/practical2/BufMgr-bin /auto/users/ms14jl/Documents/db/practical2/BufMgr-bin/CMakeFiles/minibase-bufmgr.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/minibase-bufmgr.dir/depend
