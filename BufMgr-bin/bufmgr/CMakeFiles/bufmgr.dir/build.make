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
include bufmgr/CMakeFiles/bufmgr.dir/depend.make

# Include the progress variables for this target.
include bufmgr/CMakeFiles/bufmgr.dir/progress.make

# Include the compile flags for this target's objects.
include bufmgr/CMakeFiles/bufmgr.dir/flags.make

bufmgr/CMakeFiles/bufmgr.dir/bufmgr.o: bufmgr/CMakeFiles/bufmgr.dir/flags.make
bufmgr/CMakeFiles/bufmgr.dir/bufmgr.o: /auto/users/ms14jl/Documents/db/practical2/BufMgr/bufmgr/bufmgr.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /auto/users/ms14jl/Documents/db/practical2/BufMgr-bin/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object bufmgr/CMakeFiles/bufmgr.dir/bufmgr.o"
	cd /auto/users/ms14jl/Documents/db/practical2/BufMgr-bin/bufmgr && /usr/lib64/ccache/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/bufmgr.dir/bufmgr.o -c /auto/users/ms14jl/Documents/db/practical2/BufMgr/bufmgr/bufmgr.cpp

bufmgr/CMakeFiles/bufmgr.dir/bufmgr.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bufmgr.dir/bufmgr.i"
	cd /auto/users/ms14jl/Documents/db/practical2/BufMgr-bin/bufmgr && /usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /auto/users/ms14jl/Documents/db/practical2/BufMgr/bufmgr/bufmgr.cpp > CMakeFiles/bufmgr.dir/bufmgr.i

bufmgr/CMakeFiles/bufmgr.dir/bufmgr.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bufmgr.dir/bufmgr.s"
	cd /auto/users/ms14jl/Documents/db/practical2/BufMgr-bin/bufmgr && /usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /auto/users/ms14jl/Documents/db/practical2/BufMgr/bufmgr/bufmgr.cpp -o CMakeFiles/bufmgr.dir/bufmgr.s

bufmgr/CMakeFiles/bufmgr.dir/bufmgr.o.requires:
.PHONY : bufmgr/CMakeFiles/bufmgr.dir/bufmgr.o.requires

bufmgr/CMakeFiles/bufmgr.dir/bufmgr.o.provides: bufmgr/CMakeFiles/bufmgr.dir/bufmgr.o.requires
	$(MAKE) -f bufmgr/CMakeFiles/bufmgr.dir/build.make bufmgr/CMakeFiles/bufmgr.dir/bufmgr.o.provides.build
.PHONY : bufmgr/CMakeFiles/bufmgr.dir/bufmgr.o.provides

bufmgr/CMakeFiles/bufmgr.dir/bufmgr.o.provides.build: bufmgr/CMakeFiles/bufmgr.dir/bufmgr.o

bufmgr/CMakeFiles/bufmgr.dir/bmtest.o: bufmgr/CMakeFiles/bufmgr.dir/flags.make
bufmgr/CMakeFiles/bufmgr.dir/bmtest.o: /auto/users/ms14jl/Documents/db/practical2/BufMgr/bufmgr/bmtest.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /auto/users/ms14jl/Documents/db/practical2/BufMgr-bin/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object bufmgr/CMakeFiles/bufmgr.dir/bmtest.o"
	cd /auto/users/ms14jl/Documents/db/practical2/BufMgr-bin/bufmgr && /usr/lib64/ccache/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/bufmgr.dir/bmtest.o -c /auto/users/ms14jl/Documents/db/practical2/BufMgr/bufmgr/bmtest.cpp

bufmgr/CMakeFiles/bufmgr.dir/bmtest.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bufmgr.dir/bmtest.i"
	cd /auto/users/ms14jl/Documents/db/practical2/BufMgr-bin/bufmgr && /usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /auto/users/ms14jl/Documents/db/practical2/BufMgr/bufmgr/bmtest.cpp > CMakeFiles/bufmgr.dir/bmtest.i

bufmgr/CMakeFiles/bufmgr.dir/bmtest.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bufmgr.dir/bmtest.s"
	cd /auto/users/ms14jl/Documents/db/practical2/BufMgr-bin/bufmgr && /usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /auto/users/ms14jl/Documents/db/practical2/BufMgr/bufmgr/bmtest.cpp -o CMakeFiles/bufmgr.dir/bmtest.s

bufmgr/CMakeFiles/bufmgr.dir/bmtest.o.requires:
.PHONY : bufmgr/CMakeFiles/bufmgr.dir/bmtest.o.requires

bufmgr/CMakeFiles/bufmgr.dir/bmtest.o.provides: bufmgr/CMakeFiles/bufmgr.dir/bmtest.o.requires
	$(MAKE) -f bufmgr/CMakeFiles/bufmgr.dir/build.make bufmgr/CMakeFiles/bufmgr.dir/bmtest.o.provides.build
.PHONY : bufmgr/CMakeFiles/bufmgr.dir/bmtest.o.provides

bufmgr/CMakeFiles/bufmgr.dir/bmtest.o.provides.build: bufmgr/CMakeFiles/bufmgr.dir/bmtest.o

bufmgr/CMakeFiles/bufmgr.dir/frame.o: bufmgr/CMakeFiles/bufmgr.dir/flags.make
bufmgr/CMakeFiles/bufmgr.dir/frame.o: /auto/users/ms14jl/Documents/db/practical2/BufMgr/bufmgr/frame.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /auto/users/ms14jl/Documents/db/practical2/BufMgr-bin/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object bufmgr/CMakeFiles/bufmgr.dir/frame.o"
	cd /auto/users/ms14jl/Documents/db/practical2/BufMgr-bin/bufmgr && /usr/lib64/ccache/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/bufmgr.dir/frame.o -c /auto/users/ms14jl/Documents/db/practical2/BufMgr/bufmgr/frame.cpp

bufmgr/CMakeFiles/bufmgr.dir/frame.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bufmgr.dir/frame.i"
	cd /auto/users/ms14jl/Documents/db/practical2/BufMgr-bin/bufmgr && /usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /auto/users/ms14jl/Documents/db/practical2/BufMgr/bufmgr/frame.cpp > CMakeFiles/bufmgr.dir/frame.i

bufmgr/CMakeFiles/bufmgr.dir/frame.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bufmgr.dir/frame.s"
	cd /auto/users/ms14jl/Documents/db/practical2/BufMgr-bin/bufmgr && /usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /auto/users/ms14jl/Documents/db/practical2/BufMgr/bufmgr/frame.cpp -o CMakeFiles/bufmgr.dir/frame.s

bufmgr/CMakeFiles/bufmgr.dir/frame.o.requires:
.PHONY : bufmgr/CMakeFiles/bufmgr.dir/frame.o.requires

bufmgr/CMakeFiles/bufmgr.dir/frame.o.provides: bufmgr/CMakeFiles/bufmgr.dir/frame.o.requires
	$(MAKE) -f bufmgr/CMakeFiles/bufmgr.dir/build.make bufmgr/CMakeFiles/bufmgr.dir/frame.o.provides.build
.PHONY : bufmgr/CMakeFiles/bufmgr.dir/frame.o.provides

bufmgr/CMakeFiles/bufmgr.dir/frame.o.provides.build: bufmgr/CMakeFiles/bufmgr.dir/frame.o

bufmgr/CMakeFiles/bufmgr.dir/lru.o: bufmgr/CMakeFiles/bufmgr.dir/flags.make
bufmgr/CMakeFiles/bufmgr.dir/lru.o: /auto/users/ms14jl/Documents/db/practical2/BufMgr/bufmgr/lru.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /auto/users/ms14jl/Documents/db/practical2/BufMgr-bin/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object bufmgr/CMakeFiles/bufmgr.dir/lru.o"
	cd /auto/users/ms14jl/Documents/db/practical2/BufMgr-bin/bufmgr && /usr/lib64/ccache/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/bufmgr.dir/lru.o -c /auto/users/ms14jl/Documents/db/practical2/BufMgr/bufmgr/lru.cpp

bufmgr/CMakeFiles/bufmgr.dir/lru.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bufmgr.dir/lru.i"
	cd /auto/users/ms14jl/Documents/db/practical2/BufMgr-bin/bufmgr && /usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /auto/users/ms14jl/Documents/db/practical2/BufMgr/bufmgr/lru.cpp > CMakeFiles/bufmgr.dir/lru.i

bufmgr/CMakeFiles/bufmgr.dir/lru.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bufmgr.dir/lru.s"
	cd /auto/users/ms14jl/Documents/db/practical2/BufMgr-bin/bufmgr && /usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /auto/users/ms14jl/Documents/db/practical2/BufMgr/bufmgr/lru.cpp -o CMakeFiles/bufmgr.dir/lru.s

bufmgr/CMakeFiles/bufmgr.dir/lru.o.requires:
.PHONY : bufmgr/CMakeFiles/bufmgr.dir/lru.o.requires

bufmgr/CMakeFiles/bufmgr.dir/lru.o.provides: bufmgr/CMakeFiles/bufmgr.dir/lru.o.requires
	$(MAKE) -f bufmgr/CMakeFiles/bufmgr.dir/build.make bufmgr/CMakeFiles/bufmgr.dir/lru.o.provides.build
.PHONY : bufmgr/CMakeFiles/bufmgr.dir/lru.o.provides

bufmgr/CMakeFiles/bufmgr.dir/lru.o.provides.build: bufmgr/CMakeFiles/bufmgr.dir/lru.o

# Object files for target bufmgr
bufmgr_OBJECTS = \
"CMakeFiles/bufmgr.dir/bufmgr.o" \
"CMakeFiles/bufmgr.dir/bmtest.o" \
"CMakeFiles/bufmgr.dir/frame.o" \
"CMakeFiles/bufmgr.dir/lru.o"

# External object files for target bufmgr
bufmgr_EXTERNAL_OBJECTS =

bufmgr/libbufmgr.a: bufmgr/CMakeFiles/bufmgr.dir/bufmgr.o
bufmgr/libbufmgr.a: bufmgr/CMakeFiles/bufmgr.dir/bmtest.o
bufmgr/libbufmgr.a: bufmgr/CMakeFiles/bufmgr.dir/frame.o
bufmgr/libbufmgr.a: bufmgr/CMakeFiles/bufmgr.dir/lru.o
bufmgr/libbufmgr.a: bufmgr/CMakeFiles/bufmgr.dir/build.make
bufmgr/libbufmgr.a: bufmgr/CMakeFiles/bufmgr.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libbufmgr.a"
	cd /auto/users/ms14jl/Documents/db/practical2/BufMgr-bin/bufmgr && $(CMAKE_COMMAND) -P CMakeFiles/bufmgr.dir/cmake_clean_target.cmake
	cd /auto/users/ms14jl/Documents/db/practical2/BufMgr-bin/bufmgr && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bufmgr.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
bufmgr/CMakeFiles/bufmgr.dir/build: bufmgr/libbufmgr.a
.PHONY : bufmgr/CMakeFiles/bufmgr.dir/build

bufmgr/CMakeFiles/bufmgr.dir/requires: bufmgr/CMakeFiles/bufmgr.dir/bufmgr.o.requires
bufmgr/CMakeFiles/bufmgr.dir/requires: bufmgr/CMakeFiles/bufmgr.dir/bmtest.o.requires
bufmgr/CMakeFiles/bufmgr.dir/requires: bufmgr/CMakeFiles/bufmgr.dir/frame.o.requires
bufmgr/CMakeFiles/bufmgr.dir/requires: bufmgr/CMakeFiles/bufmgr.dir/lru.o.requires
.PHONY : bufmgr/CMakeFiles/bufmgr.dir/requires

bufmgr/CMakeFiles/bufmgr.dir/clean:
	cd /auto/users/ms14jl/Documents/db/practical2/BufMgr-bin/bufmgr && $(CMAKE_COMMAND) -P CMakeFiles/bufmgr.dir/cmake_clean.cmake
.PHONY : bufmgr/CMakeFiles/bufmgr.dir/clean

bufmgr/CMakeFiles/bufmgr.dir/depend:
	cd /auto/users/ms14jl/Documents/db/practical2/BufMgr-bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /auto/users/ms14jl/Documents/db/practical2/BufMgr /auto/users/ms14jl/Documents/db/practical2/BufMgr/bufmgr /auto/users/ms14jl/Documents/db/practical2/BufMgr-bin /auto/users/ms14jl/Documents/db/practical2/BufMgr-bin/bufmgr /auto/users/ms14jl/Documents/db/practical2/BufMgr-bin/bufmgr/CMakeFiles/bufmgr.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : bufmgr/CMakeFiles/bufmgr.dir/depend
