# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/alexandr/Documents/GitHub/3823B1PR2/lab1_bitset/template

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/alexandr/Documents/GitHub/3823B1PR2/lab1_bitset/template/build

# Include any dependencies generated for this target.
include samples/CMakeFiles/sample_prime_numbers.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include samples/CMakeFiles/sample_prime_numbers.dir/compiler_depend.make

# Include the progress variables for this target.
include samples/CMakeFiles/sample_prime_numbers.dir/progress.make

# Include the compile flags for this target's objects.
include samples/CMakeFiles/sample_prime_numbers.dir/flags.make

samples/CMakeFiles/sample_prime_numbers.dir/codegen:
.PHONY : samples/CMakeFiles/sample_prime_numbers.dir/codegen

samples/CMakeFiles/sample_prime_numbers.dir/sample_prime_numbers.cpp.o: samples/CMakeFiles/sample_prime_numbers.dir/flags.make
samples/CMakeFiles/sample_prime_numbers.dir/sample_prime_numbers.cpp.o: /Users/alexandr/Documents/GitHub/3823B1PR2/lab1_bitset/template/samples/sample_prime_numbers.cpp
samples/CMakeFiles/sample_prime_numbers.dir/sample_prime_numbers.cpp.o: samples/CMakeFiles/sample_prime_numbers.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/alexandr/Documents/GitHub/3823B1PR2/lab1_bitset/template/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object samples/CMakeFiles/sample_prime_numbers.dir/sample_prime_numbers.cpp.o"
	cd /Users/alexandr/Documents/GitHub/3823B1PR2/lab1_bitset/template/build/samples && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT samples/CMakeFiles/sample_prime_numbers.dir/sample_prime_numbers.cpp.o -MF CMakeFiles/sample_prime_numbers.dir/sample_prime_numbers.cpp.o.d -o CMakeFiles/sample_prime_numbers.dir/sample_prime_numbers.cpp.o -c /Users/alexandr/Documents/GitHub/3823B1PR2/lab1_bitset/template/samples/sample_prime_numbers.cpp

samples/CMakeFiles/sample_prime_numbers.dir/sample_prime_numbers.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/sample_prime_numbers.dir/sample_prime_numbers.cpp.i"
	cd /Users/alexandr/Documents/GitHub/3823B1PR2/lab1_bitset/template/build/samples && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/alexandr/Documents/GitHub/3823B1PR2/lab1_bitset/template/samples/sample_prime_numbers.cpp > CMakeFiles/sample_prime_numbers.dir/sample_prime_numbers.cpp.i

samples/CMakeFiles/sample_prime_numbers.dir/sample_prime_numbers.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/sample_prime_numbers.dir/sample_prime_numbers.cpp.s"
	cd /Users/alexandr/Documents/GitHub/3823B1PR2/lab1_bitset/template/build/samples && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/alexandr/Documents/GitHub/3823B1PR2/lab1_bitset/template/samples/sample_prime_numbers.cpp -o CMakeFiles/sample_prime_numbers.dir/sample_prime_numbers.cpp.s

# Object files for target sample_prime_numbers
sample_prime_numbers_OBJECTS = \
"CMakeFiles/sample_prime_numbers.dir/sample_prime_numbers.cpp.o"

# External object files for target sample_prime_numbers
sample_prime_numbers_EXTERNAL_OBJECTS =

bin/sample_prime_numbers: samples/CMakeFiles/sample_prime_numbers.dir/sample_prime_numbers.cpp.o
bin/sample_prime_numbers: samples/CMakeFiles/sample_prime_numbers.dir/build.make
bin/sample_prime_numbers: lib/libset.a
bin/sample_prime_numbers: samples/CMakeFiles/sample_prime_numbers.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/alexandr/Documents/GitHub/3823B1PR2/lab1_bitset/template/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/sample_prime_numbers"
	cd /Users/alexandr/Documents/GitHub/3823B1PR2/lab1_bitset/template/build/samples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sample_prime_numbers.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
samples/CMakeFiles/sample_prime_numbers.dir/build: bin/sample_prime_numbers
.PHONY : samples/CMakeFiles/sample_prime_numbers.dir/build

samples/CMakeFiles/sample_prime_numbers.dir/clean:
	cd /Users/alexandr/Documents/GitHub/3823B1PR2/lab1_bitset/template/build/samples && $(CMAKE_COMMAND) -P CMakeFiles/sample_prime_numbers.dir/cmake_clean.cmake
.PHONY : samples/CMakeFiles/sample_prime_numbers.dir/clean

samples/CMakeFiles/sample_prime_numbers.dir/depend:
	cd /Users/alexandr/Documents/GitHub/3823B1PR2/lab1_bitset/template/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/alexandr/Documents/GitHub/3823B1PR2/lab1_bitset/template /Users/alexandr/Documents/GitHub/3823B1PR2/lab1_bitset/template/samples /Users/alexandr/Documents/GitHub/3823B1PR2/lab1_bitset/template/build /Users/alexandr/Documents/GitHub/3823B1PR2/lab1_bitset/template/build/samples /Users/alexandr/Documents/GitHub/3823B1PR2/lab1_bitset/template/build/samples/CMakeFiles/sample_prime_numbers.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : samples/CMakeFiles/sample_prime_numbers.dir/depend

