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
CMAKE_SOURCE_DIR = /home/sudeep03799/New2/libraries/cmocka

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sudeep03799/New2/libraries/build-Debug/cmocka

# Include any dependencies generated for this target.
include src/CMakeFiles/cmocka_static.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/cmocka_static.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/cmocka_static.dir/flags.make

src/CMakeFiles/cmocka_static.dir/cmocka.c.o: src/CMakeFiles/cmocka_static.dir/flags.make
src/CMakeFiles/cmocka_static.dir/cmocka.c.o: /home/sudeep03799/New2/libraries/cmocka/src/cmocka.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sudeep03799/New2/libraries/build-Debug/cmocka/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/CMakeFiles/cmocka_static.dir/cmocka.c.o"
	cd /home/sudeep03799/New2/libraries/build-Debug/cmocka/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cmocka_static.dir/cmocka.c.o   -c /home/sudeep03799/New2/libraries/cmocka/src/cmocka.c

src/CMakeFiles/cmocka_static.dir/cmocka.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cmocka_static.dir/cmocka.c.i"
	cd /home/sudeep03799/New2/libraries/build-Debug/cmocka/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sudeep03799/New2/libraries/cmocka/src/cmocka.c > CMakeFiles/cmocka_static.dir/cmocka.c.i

src/CMakeFiles/cmocka_static.dir/cmocka.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cmocka_static.dir/cmocka.c.s"
	cd /home/sudeep03799/New2/libraries/build-Debug/cmocka/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sudeep03799/New2/libraries/cmocka/src/cmocka.c -o CMakeFiles/cmocka_static.dir/cmocka.c.s

src/CMakeFiles/cmocka_static.dir/cmocka.c.o.requires:

.PHONY : src/CMakeFiles/cmocka_static.dir/cmocka.c.o.requires

src/CMakeFiles/cmocka_static.dir/cmocka.c.o.provides: src/CMakeFiles/cmocka_static.dir/cmocka.c.o.requires
	$(MAKE) -f src/CMakeFiles/cmocka_static.dir/build.make src/CMakeFiles/cmocka_static.dir/cmocka.c.o.provides.build
.PHONY : src/CMakeFiles/cmocka_static.dir/cmocka.c.o.provides

src/CMakeFiles/cmocka_static.dir/cmocka.c.o.provides.build: src/CMakeFiles/cmocka_static.dir/cmocka.c.o


# Object files for target cmocka_static
cmocka_static_OBJECTS = \
"CMakeFiles/cmocka_static.dir/cmocka.c.o"

# External object files for target cmocka_static
cmocka_static_EXTERNAL_OBJECTS =

src/libcmocka.a: src/CMakeFiles/cmocka_static.dir/cmocka.c.o
src/libcmocka.a: src/CMakeFiles/cmocka_static.dir/build.make
src/libcmocka.a: src/CMakeFiles/cmocka_static.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sudeep03799/New2/libraries/build-Debug/cmocka/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libcmocka.a"
	cd /home/sudeep03799/New2/libraries/build-Debug/cmocka/src && $(CMAKE_COMMAND) -P CMakeFiles/cmocka_static.dir/cmake_clean_target.cmake
	cd /home/sudeep03799/New2/libraries/build-Debug/cmocka/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cmocka_static.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/cmocka_static.dir/build: src/libcmocka.a

.PHONY : src/CMakeFiles/cmocka_static.dir/build

src/CMakeFiles/cmocka_static.dir/requires: src/CMakeFiles/cmocka_static.dir/cmocka.c.o.requires

.PHONY : src/CMakeFiles/cmocka_static.dir/requires

src/CMakeFiles/cmocka_static.dir/clean:
	cd /home/sudeep03799/New2/libraries/build-Debug/cmocka/src && $(CMAKE_COMMAND) -P CMakeFiles/cmocka_static.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/cmocka_static.dir/clean

src/CMakeFiles/cmocka_static.dir/depend:
	cd /home/sudeep03799/New2/libraries/build-Debug/cmocka && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sudeep03799/New2/libraries/cmocka /home/sudeep03799/New2/libraries/cmocka/src /home/sudeep03799/New2/libraries/build-Debug/cmocka /home/sudeep03799/New2/libraries/build-Debug/cmocka/src /home/sudeep03799/New2/libraries/build-Debug/cmocka/src/CMakeFiles/cmocka_static.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/cmocka_static.dir/depend

