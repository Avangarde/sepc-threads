# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.6

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /user/1/.base/corteshs/home/tp/SEPC/sepc-threads

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /user/1/.base/corteshs/home/tp/SEPC/sepc-threads/build

# Include any dependencies generated for this target.
include CMakeFiles/ensitsp.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ensitsp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ensitsp.dir/flags.make

CMakeFiles/ensitsp.dir/src/tsp-genmap.c.o: CMakeFiles/ensitsp.dir/flags.make
CMakeFiles/ensitsp.dir/src/tsp-genmap.c.o: ../src/tsp-genmap.c
	$(CMAKE_COMMAND) -E cmake_progress_report /user/1/.base/corteshs/home/tp/SEPC/sepc-threads/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/ensitsp.dir/src/tsp-genmap.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/ensitsp.dir/src/tsp-genmap.c.o   -c /user/1/.base/corteshs/home/tp/SEPC/sepc-threads/src/tsp-genmap.c

CMakeFiles/ensitsp.dir/src/tsp-genmap.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ensitsp.dir/src/tsp-genmap.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /user/1/.base/corteshs/home/tp/SEPC/sepc-threads/src/tsp-genmap.c > CMakeFiles/ensitsp.dir/src/tsp-genmap.c.i

CMakeFiles/ensitsp.dir/src/tsp-genmap.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ensitsp.dir/src/tsp-genmap.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /user/1/.base/corteshs/home/tp/SEPC/sepc-threads/src/tsp-genmap.c -o CMakeFiles/ensitsp.dir/src/tsp-genmap.c.s

CMakeFiles/ensitsp.dir/src/tsp-genmap.c.o.requires:
.PHONY : CMakeFiles/ensitsp.dir/src/tsp-genmap.c.o.requires

CMakeFiles/ensitsp.dir/src/tsp-genmap.c.o.provides: CMakeFiles/ensitsp.dir/src/tsp-genmap.c.o.requires
	$(MAKE) -f CMakeFiles/ensitsp.dir/build.make CMakeFiles/ensitsp.dir/src/tsp-genmap.c.o.provides.build
.PHONY : CMakeFiles/ensitsp.dir/src/tsp-genmap.c.o.provides

CMakeFiles/ensitsp.dir/src/tsp-genmap.c.o.provides.build: CMakeFiles/ensitsp.dir/src/tsp-genmap.c.o
.PHONY : CMakeFiles/ensitsp.dir/src/tsp-genmap.c.o.provides.build

CMakeFiles/ensitsp.dir/src/tsp-job.c.o: CMakeFiles/ensitsp.dir/flags.make
CMakeFiles/ensitsp.dir/src/tsp-job.c.o: ../src/tsp-job.c
	$(CMAKE_COMMAND) -E cmake_progress_report /user/1/.base/corteshs/home/tp/SEPC/sepc-threads/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/ensitsp.dir/src/tsp-job.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/ensitsp.dir/src/tsp-job.c.o   -c /user/1/.base/corteshs/home/tp/SEPC/sepc-threads/src/tsp-job.c

CMakeFiles/ensitsp.dir/src/tsp-job.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ensitsp.dir/src/tsp-job.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /user/1/.base/corteshs/home/tp/SEPC/sepc-threads/src/tsp-job.c > CMakeFiles/ensitsp.dir/src/tsp-job.c.i

CMakeFiles/ensitsp.dir/src/tsp-job.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ensitsp.dir/src/tsp-job.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /user/1/.base/corteshs/home/tp/SEPC/sepc-threads/src/tsp-job.c -o CMakeFiles/ensitsp.dir/src/tsp-job.c.s

CMakeFiles/ensitsp.dir/src/tsp-job.c.o.requires:
.PHONY : CMakeFiles/ensitsp.dir/src/tsp-job.c.o.requires

CMakeFiles/ensitsp.dir/src/tsp-job.c.o.provides: CMakeFiles/ensitsp.dir/src/tsp-job.c.o.requires
	$(MAKE) -f CMakeFiles/ensitsp.dir/build.make CMakeFiles/ensitsp.dir/src/tsp-job.c.o.provides.build
.PHONY : CMakeFiles/ensitsp.dir/src/tsp-job.c.o.provides

CMakeFiles/ensitsp.dir/src/tsp-job.c.o.provides.build: CMakeFiles/ensitsp.dir/src/tsp-job.c.o
.PHONY : CMakeFiles/ensitsp.dir/src/tsp-job.c.o.provides.build

CMakeFiles/ensitsp.dir/src/tsp-main-para.c.o: CMakeFiles/ensitsp.dir/flags.make
CMakeFiles/ensitsp.dir/src/tsp-main-para.c.o: ../src/tsp-main-para.c
	$(CMAKE_COMMAND) -E cmake_progress_report /user/1/.base/corteshs/home/tp/SEPC/sepc-threads/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/ensitsp.dir/src/tsp-main-para.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/ensitsp.dir/src/tsp-main-para.c.o   -c /user/1/.base/corteshs/home/tp/SEPC/sepc-threads/src/tsp-main-para.c

CMakeFiles/ensitsp.dir/src/tsp-main-para.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ensitsp.dir/src/tsp-main-para.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /user/1/.base/corteshs/home/tp/SEPC/sepc-threads/src/tsp-main-para.c > CMakeFiles/ensitsp.dir/src/tsp-main-para.c.i

CMakeFiles/ensitsp.dir/src/tsp-main-para.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ensitsp.dir/src/tsp-main-para.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /user/1/.base/corteshs/home/tp/SEPC/sepc-threads/src/tsp-main-para.c -o CMakeFiles/ensitsp.dir/src/tsp-main-para.c.s

CMakeFiles/ensitsp.dir/src/tsp-main-para.c.o.requires:
.PHONY : CMakeFiles/ensitsp.dir/src/tsp-main-para.c.o.requires

CMakeFiles/ensitsp.dir/src/tsp-main-para.c.o.provides: CMakeFiles/ensitsp.dir/src/tsp-main-para.c.o.requires
	$(MAKE) -f CMakeFiles/ensitsp.dir/build.make CMakeFiles/ensitsp.dir/src/tsp-main-para.c.o.provides.build
.PHONY : CMakeFiles/ensitsp.dir/src/tsp-main-para.c.o.provides

CMakeFiles/ensitsp.dir/src/tsp-main-para.c.o.provides.build: CMakeFiles/ensitsp.dir/src/tsp-main-para.c.o
.PHONY : CMakeFiles/ensitsp.dir/src/tsp-main-para.c.o.provides.build

CMakeFiles/ensitsp.dir/src/tsp-print.c.o: CMakeFiles/ensitsp.dir/flags.make
CMakeFiles/ensitsp.dir/src/tsp-print.c.o: ../src/tsp-print.c
	$(CMAKE_COMMAND) -E cmake_progress_report /user/1/.base/corteshs/home/tp/SEPC/sepc-threads/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/ensitsp.dir/src/tsp-print.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/ensitsp.dir/src/tsp-print.c.o   -c /user/1/.base/corteshs/home/tp/SEPC/sepc-threads/src/tsp-print.c

CMakeFiles/ensitsp.dir/src/tsp-print.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ensitsp.dir/src/tsp-print.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /user/1/.base/corteshs/home/tp/SEPC/sepc-threads/src/tsp-print.c > CMakeFiles/ensitsp.dir/src/tsp-print.c.i

CMakeFiles/ensitsp.dir/src/tsp-print.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ensitsp.dir/src/tsp-print.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /user/1/.base/corteshs/home/tp/SEPC/sepc-threads/src/tsp-print.c -o CMakeFiles/ensitsp.dir/src/tsp-print.c.s

CMakeFiles/ensitsp.dir/src/tsp-print.c.o.requires:
.PHONY : CMakeFiles/ensitsp.dir/src/tsp-print.c.o.requires

CMakeFiles/ensitsp.dir/src/tsp-print.c.o.provides: CMakeFiles/ensitsp.dir/src/tsp-print.c.o.requires
	$(MAKE) -f CMakeFiles/ensitsp.dir/build.make CMakeFiles/ensitsp.dir/src/tsp-print.c.o.provides.build
.PHONY : CMakeFiles/ensitsp.dir/src/tsp-print.c.o.provides

CMakeFiles/ensitsp.dir/src/tsp-print.c.o.provides.build: CMakeFiles/ensitsp.dir/src/tsp-print.c.o
.PHONY : CMakeFiles/ensitsp.dir/src/tsp-print.c.o.provides.build

CMakeFiles/ensitsp.dir/src/tsp-tsp.c.o: CMakeFiles/ensitsp.dir/flags.make
CMakeFiles/ensitsp.dir/src/tsp-tsp.c.o: ../src/tsp-tsp.c
	$(CMAKE_COMMAND) -E cmake_progress_report /user/1/.base/corteshs/home/tp/SEPC/sepc-threads/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/ensitsp.dir/src/tsp-tsp.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/ensitsp.dir/src/tsp-tsp.c.o   -c /user/1/.base/corteshs/home/tp/SEPC/sepc-threads/src/tsp-tsp.c

CMakeFiles/ensitsp.dir/src/tsp-tsp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ensitsp.dir/src/tsp-tsp.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /user/1/.base/corteshs/home/tp/SEPC/sepc-threads/src/tsp-tsp.c > CMakeFiles/ensitsp.dir/src/tsp-tsp.c.i

CMakeFiles/ensitsp.dir/src/tsp-tsp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ensitsp.dir/src/tsp-tsp.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /user/1/.base/corteshs/home/tp/SEPC/sepc-threads/src/tsp-tsp.c -o CMakeFiles/ensitsp.dir/src/tsp-tsp.c.s

CMakeFiles/ensitsp.dir/src/tsp-tsp.c.o.requires:
.PHONY : CMakeFiles/ensitsp.dir/src/tsp-tsp.c.o.requires

CMakeFiles/ensitsp.dir/src/tsp-tsp.c.o.provides: CMakeFiles/ensitsp.dir/src/tsp-tsp.c.o.requires
	$(MAKE) -f CMakeFiles/ensitsp.dir/build.make CMakeFiles/ensitsp.dir/src/tsp-tsp.c.o.provides.build
.PHONY : CMakeFiles/ensitsp.dir/src/tsp-tsp.c.o.provides

CMakeFiles/ensitsp.dir/src/tsp-tsp.c.o.provides.build: CMakeFiles/ensitsp.dir/src/tsp-tsp.c.o
.PHONY : CMakeFiles/ensitsp.dir/src/tsp-tsp.c.o.provides.build

# Object files for target ensitsp
ensitsp_OBJECTS = \
"CMakeFiles/ensitsp.dir/src/tsp-genmap.c.o" \
"CMakeFiles/ensitsp.dir/src/tsp-job.c.o" \
"CMakeFiles/ensitsp.dir/src/tsp-main-para.c.o" \
"CMakeFiles/ensitsp.dir/src/tsp-print.c.o" \
"CMakeFiles/ensitsp.dir/src/tsp-tsp.c.o"

# External object files for target ensitsp
ensitsp_EXTERNAL_OBJECTS =

ensitsp: CMakeFiles/ensitsp.dir/src/tsp-genmap.c.o
ensitsp: CMakeFiles/ensitsp.dir/src/tsp-job.c.o
ensitsp: CMakeFiles/ensitsp.dir/src/tsp-main-para.c.o
ensitsp: CMakeFiles/ensitsp.dir/src/tsp-print.c.o
ensitsp: CMakeFiles/ensitsp.dir/src/tsp-tsp.c.o
ensitsp: CMakeFiles/ensitsp.dir/build.make
ensitsp: CMakeFiles/ensitsp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable ensitsp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ensitsp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ensitsp.dir/build: ensitsp
.PHONY : CMakeFiles/ensitsp.dir/build

CMakeFiles/ensitsp.dir/requires: CMakeFiles/ensitsp.dir/src/tsp-genmap.c.o.requires
CMakeFiles/ensitsp.dir/requires: CMakeFiles/ensitsp.dir/src/tsp-job.c.o.requires
CMakeFiles/ensitsp.dir/requires: CMakeFiles/ensitsp.dir/src/tsp-main-para.c.o.requires
CMakeFiles/ensitsp.dir/requires: CMakeFiles/ensitsp.dir/src/tsp-print.c.o.requires
CMakeFiles/ensitsp.dir/requires: CMakeFiles/ensitsp.dir/src/tsp-tsp.c.o.requires
.PHONY : CMakeFiles/ensitsp.dir/requires

CMakeFiles/ensitsp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ensitsp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ensitsp.dir/clean

CMakeFiles/ensitsp.dir/depend:
	cd /user/1/.base/corteshs/home/tp/SEPC/sepc-threads/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /user/1/.base/corteshs/home/tp/SEPC/sepc-threads /user/1/.base/corteshs/home/tp/SEPC/sepc-threads /user/1/.base/corteshs/home/tp/SEPC/sepc-threads/build /user/1/.base/corteshs/home/tp/SEPC/sepc-threads/build /user/1/.base/corteshs/home/tp/SEPC/sepc-threads/build/CMakeFiles/ensitsp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ensitsp.dir/depend

