# CMAKE generated file: DO NOT EDIT!
# Generated by "KDevelop3" Generator, CMake Version 2.4

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
.SUFFIXES:

.SUFFIXES: .hpux_make_needs_suffix_list

# Produce verbose output by default.
VERBOSE = 1

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

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
CMAKE_SOURCE_DIR = /home/erik/src/InsightApplications-3.8.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration

# Include any dependencies generated for this target.
include VolviewPlugIns/CMakeFiles/vvITKDeformableModelModule.dir/depend.make

# Include the progress variables for this target.
include VolviewPlugIns/CMakeFiles/vvITKDeformableModelModule.dir/progress.make

# Include the compile flags for this target's objects.
include VolviewPlugIns/CMakeFiles/vvITKDeformableModelModule.dir/flags.make

VolviewPlugIns/CMakeFiles/vvITKDeformableModelModule.dir/depend.make.mark: VolviewPlugIns/CMakeFiles/vvITKDeformableModelModule.dir/flags.make
VolviewPlugIns/CMakeFiles/vvITKDeformableModelModule.dir/depend.make.mark: ../VolviewPlugIns/vvITKDeformableModelModule.cxx

VolviewPlugIns/CMakeFiles/vvITKDeformableModelModule.dir/vvITKDeformableModelModule.o: VolviewPlugIns/CMakeFiles/vvITKDeformableModelModule.dir/flags.make
VolviewPlugIns/CMakeFiles/vvITKDeformableModelModule.dir/vvITKDeformableModelModule.o: ../VolviewPlugIns/vvITKDeformableModelModule.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/CMakeFiles $(CMAKE_PROGRESS_1)
	@echo "Building CXX object VolviewPlugIns/CMakeFiles/vvITKDeformableModelModule.dir/vvITKDeformableModelModule.o"
	/usr/bin/c++   $(CXX_FLAGS) -o VolviewPlugIns/CMakeFiles/vvITKDeformableModelModule.dir/vvITKDeformableModelModule.o -c /home/erik/src/InsightApplications-3.8.0/VolviewPlugIns/vvITKDeformableModelModule.cxx

VolviewPlugIns/CMakeFiles/vvITKDeformableModelModule.dir/vvITKDeformableModelModule.i: cmake_force
	@echo "Preprocessing CXX source to VolviewPlugIns/CMakeFiles/vvITKDeformableModelModule.dir/vvITKDeformableModelModule.i"
	/usr/bin/c++  $(CXX_FLAGS) -E /home/erik/src/InsightApplications-3.8.0/VolviewPlugIns/vvITKDeformableModelModule.cxx > VolviewPlugIns/CMakeFiles/vvITKDeformableModelModule.dir/vvITKDeformableModelModule.i

VolviewPlugIns/CMakeFiles/vvITKDeformableModelModule.dir/vvITKDeformableModelModule.s: cmake_force
	@echo "Compiling CXX source to assembly VolviewPlugIns/CMakeFiles/vvITKDeformableModelModule.dir/vvITKDeformableModelModule.s"
	/usr/bin/c++  $(CXX_FLAGS) -S /home/erik/src/InsightApplications-3.8.0/VolviewPlugIns/vvITKDeformableModelModule.cxx -o VolviewPlugIns/CMakeFiles/vvITKDeformableModelModule.dir/vvITKDeformableModelModule.s

VolviewPlugIns/CMakeFiles/vvITKDeformableModelModule.dir/vvITKDeformableModelModule.o.requires:

VolviewPlugIns/CMakeFiles/vvITKDeformableModelModule.dir/vvITKDeformableModelModule.o.provides: VolviewPlugIns/CMakeFiles/vvITKDeformableModelModule.dir/vvITKDeformableModelModule.o.requires
	$(MAKE) -f VolviewPlugIns/CMakeFiles/vvITKDeformableModelModule.dir/build.make VolviewPlugIns/CMakeFiles/vvITKDeformableModelModule.dir/vvITKDeformableModelModule.o.provides.build

VolviewPlugIns/CMakeFiles/vvITKDeformableModelModule.dir/vvITKDeformableModelModule.o.provides.build: VolviewPlugIns/CMakeFiles/vvITKDeformableModelModule.dir/vvITKDeformableModelModule.o

VolviewPlugIns/CMakeFiles/vvITKDeformableModelModule.dir/depend: VolviewPlugIns/CMakeFiles/vvITKDeformableModelModule.dir/depend.make.mark

VolviewPlugIns/CMakeFiles/vvITKDeformableModelModule.dir/depend.make.mark:
	@echo "Scanning dependencies of target vvITKDeformableModelModule"
	cd /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration && $(CMAKE_COMMAND) -E cmake_depends "KDevelop3" /home/erik/src/InsightApplications-3.8.0 /home/erik/src/InsightApplications-3.8.0/VolviewPlugIns /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/VolviewPlugIns /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/VolviewPlugIns/CMakeFiles/vvITKDeformableModelModule.dir/DependInfo.cmake

# Object files for target vvITKDeformableModelModule
vvITKDeformableModelModule_OBJECTS = \
"CMakeFiles/vvITKDeformableModelModule.dir/vvITKDeformableModelModule.o"

# External object files for target vvITKDeformableModelModule
vvITKDeformableModelModule_EXTERNAL_OBJECTS =

VolviewPlugIns/libvvITKDeformableModelModule.so: VolviewPlugIns/CMakeFiles/vvITKDeformableModelModule.dir/vvITKDeformableModelModule.o
VolviewPlugIns/libvvITKDeformableModelModule.so: VolviewPlugIns/CMakeFiles/vvITKDeformableModelModule.dir/build.make
	@echo "Linking CXX shared module libvvITKDeformableModelModule.so"
	cd /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/VolviewPlugIns && $(CMAKE_COMMAND) -P CMakeFiles/vvITKDeformableModelModule.dir/cmake_clean_target.cmake
	cd /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/VolviewPlugIns && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vvITKDeformableModelModule.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
VolviewPlugIns/CMakeFiles/vvITKDeformableModelModule.dir/build: VolviewPlugIns/libvvITKDeformableModelModule.so

# Object files for target vvITKDeformableModelModule
vvITKDeformableModelModule_OBJECTS = \
"CMakeFiles/vvITKDeformableModelModule.dir/vvITKDeformableModelModule.o"

# External object files for target vvITKDeformableModelModule
vvITKDeformableModelModule_EXTERNAL_OBJECTS =

VolviewPlugIns/CMakeFiles/CMakeRelink.dir/libvvITKDeformableModelModule.so: VolviewPlugIns/CMakeFiles/vvITKDeformableModelModule.dir/vvITKDeformableModelModule.o
VolviewPlugIns/CMakeFiles/CMakeRelink.dir/libvvITKDeformableModelModule.so: VolviewPlugIns/CMakeFiles/vvITKDeformableModelModule.dir/build.make
	@echo "Linking CXX shared module CMakeFiles/CMakeRelink.dir/libvvITKDeformableModelModule.so"
	cd /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/VolviewPlugIns && $(CMAKE_COMMAND) -P CMakeFiles/vvITKDeformableModelModule.dir/cmake_clean_target.cmake
	cd /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/VolviewPlugIns && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vvITKDeformableModelModule.dir/relink.txt --verbose=$(VERBOSE)

# Rule to relink during preinstall.
VolviewPlugIns/CMakeFiles/vvITKDeformableModelModule.dir/preinstall: VolviewPlugIns/CMakeFiles/CMakeRelink.dir/libvvITKDeformableModelModule.so

VolviewPlugIns/CMakeFiles/vvITKDeformableModelModule.dir/requires: VolviewPlugIns/CMakeFiles/vvITKDeformableModelModule.dir/vvITKDeformableModelModule.o.requires

VolviewPlugIns/CMakeFiles/vvITKDeformableModelModule.dir/clean:
	cd /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/VolviewPlugIns && $(CMAKE_COMMAND) -P CMakeFiles/vvITKDeformableModelModule.dir/cmake_clean.cmake

