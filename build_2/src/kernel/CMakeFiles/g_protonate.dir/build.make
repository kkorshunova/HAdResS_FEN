# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.14.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.14.1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/build_2

# Include any dependencies generated for this target.
include src/kernel/CMakeFiles/g_protonate.dir/depend.make

# Include the progress variables for this target.
include src/kernel/CMakeFiles/g_protonate.dir/progress.make

# Include the compile flags for this target's objects.
include src/kernel/CMakeFiles/g_protonate.dir/flags.make

src/kernel/CMakeFiles/g_protonate.dir/g_protonate.c.o: src/kernel/CMakeFiles/g_protonate.dir/flags.make
src/kernel/CMakeFiles/g_protonate.dir/g_protonate.c.o: ../src/kernel/g_protonate.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/build_2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/kernel/CMakeFiles/g_protonate.dir/g_protonate.c.o"
	cd /Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/build_2/src/kernel && /usr/local/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/g_protonate.dir/g_protonate.c.o   -c /Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/src/kernel/g_protonate.c

src/kernel/CMakeFiles/g_protonate.dir/g_protonate.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/g_protonate.dir/g_protonate.c.i"
	cd /Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/build_2/src/kernel && /usr/local/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/src/kernel/g_protonate.c > CMakeFiles/g_protonate.dir/g_protonate.c.i

src/kernel/CMakeFiles/g_protonate.dir/g_protonate.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/g_protonate.dir/g_protonate.c.s"
	cd /Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/build_2/src/kernel && /usr/local/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/src/kernel/g_protonate.c -o CMakeFiles/g_protonate.dir/g_protonate.c.s

# Object files for target g_protonate
g_protonate_OBJECTS = \
"CMakeFiles/g_protonate.dir/g_protonate.c.o"

# External object files for target g_protonate
g_protonate_EXTERNAL_OBJECTS =

src/kernel/g_protonate: src/kernel/CMakeFiles/g_protonate.dir/g_protonate.c.o
src/kernel/g_protonate: src/kernel/CMakeFiles/g_protonate.dir/build.make
src/kernel/g_protonate: src/kernel/libgmxpreprocess.a
src/kernel/g_protonate: src/mdlib/libmd.a
src/kernel/g_protonate: src/gmxlib/libgmx.a
src/kernel/g_protonate: /usr/lib/libxml2.dylib
src/kernel/g_protonate: src/kernel/CMakeFiles/g_protonate.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/build_2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable g_protonate"
	cd /Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/build_2/src/kernel && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/g_protonate.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/kernel/CMakeFiles/g_protonate.dir/build: src/kernel/g_protonate

.PHONY : src/kernel/CMakeFiles/g_protonate.dir/build

src/kernel/CMakeFiles/g_protonate.dir/clean:
	cd /Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/build_2/src/kernel && $(CMAKE_COMMAND) -P CMakeFiles/g_protonate.dir/cmake_clean.cmake
.PHONY : src/kernel/CMakeFiles/g_protonate.dir/clean

src/kernel/CMakeFiles/g_protonate.dir/depend:
	cd /Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/build_2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress /Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/src/kernel /Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/build_2 /Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/build_2/src/kernel /Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/build_2/src/kernel/CMakeFiles/g_protonate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/kernel/CMakeFiles/g_protonate.dir/depend

