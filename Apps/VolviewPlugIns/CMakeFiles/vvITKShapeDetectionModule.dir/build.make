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
include VolviewPlugIns/CMakeFiles/vvITKShapeDetectionModule.dir/depend.make

# Include the progress variables for this target.
include VolviewPlugIns/CMakeFiles/vvITKShapeDetectionModule.dir/progress.make

# Include the compile flags for this target's objects.
include VolviewPlugIns/CMakeFiles/vvITKShapeDetectionModule.dir/flags.make

VolviewPlugIns/CMakeFiles/vvITKShapeDetectionModule.dir/depend.make.mark: VolviewPlugIns/CMakeFiles/vvITKShapeDetectionModule.dir/flags.make
VolviewPlugIns/CMakeFiles/vvITKShapeDetectionModule.dir/depend.make.mark: ../VolviewPlugIns/vvITKShapeDetectionModule.cxx

VolviewPlugIns/CMakeFiles/vvITKShapeDetectionModule.dir/vvITKShapeDetectionModule.o: VolviewPlugIns/CMakeFiles/vvITKShapeDetectionModule.dir/flags.make
VolviewPlugIns/CMakeFiles/vvITKShapeDetectionModule.dir/vvITKShapeDetectionModule.o: ../VolviewPlugIns/vvITKShapeDetectionModule.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/CMakeFiles $(CMAKE_PROGRESS_1)
	@echo "Building CXX object VolviewPlugIns/CMakeFiles/vvITKShapeDetectionModule.dir/vvITKShapeDetectionModule.o"
	/usr/bin/c++   $(CXX_FLAGS) -o VolviewPlugIns/CMakeFiles/vvITKShapeDetectionModule.dir/vvITKShapeDetectionModule.o -c /home/erik/src/InsightApplications-3.8.0/VolviewPlugIns/vvITKShapeDetectionModule.cxx

VolviewPlugIns/CMakeFiles/vvITKShapeDetectionModule.dir/vvITKShapeDetectionModule.i: cmake_force
	@echo "Preprocessing CXX source to VolviewPlugIns/CMakeFiles/vvITKShapeDetectionModule.dir/vvITKShapeDetectionModule.i"
	/usr/bin/c++  $(CXX_FLAGS) -E /home/erik/src/InsightApplications-3.8.0/VolviewPlugIns/vvITKShapeDetectionModule.cxx > VolviewPlugIns/CMakeFiles/vvITKShapeDetectionModule.dir/vvITKShapeDetectionModule.i

VolviewPlugIns/CMakeFiles/vvITKShapeDetectionModule.dir/vvITKShapeDetectionModule.s: cmake_force
	@echo "Compiling CXX source to assembly VolviewPlugIns/CMakeFiles/vvITKShapeDetectionModule.dir/vvITKShapeDetectionModule.s"
	/usr/bin/c++  $(CXX_FLAGS) -S /home/erik/src/InsightApplications-3.8.0/VolviewPlugIns/vvITKShapeDetectionModule.cxx -o VolviewPlugIns/CMakeFiles/vvITKShapeDetectionModule.dir/vvITKShapeDetectionModule.s

VolviewPlugIns/CMakeFiles/vvITKShapeDetectionModule.dir/vvITKShapeDetectionModule.o.requires:

VolviewPlugIns/CMakeFiles/vvITKShapeDetectionModule.dir/vvITKShapeDetectionModule.o.provides: VolviewPlugIns/CMakeFiles/vvITKShapeDetectionModule.dir/vvITKShapeDetectionModule.o.requires
	$(MAKE) -f VolviewPlugIns/CMakeFiles/vvITKShapeDetectionModule.dir/build.make VolviewPlugIns/CMakeFiles/vvITKShapeDetectionModule.dir/vvITKShapeDetectionModule.o.provides.build

VolviewPlugIns/CMakeFiles/vvITKShapeDetectionModule.dir/vvITKShapeDetectionModule.o.provides.build: VolviewPlugIns/CMakeFiles/vvITKShapeDetectionModule.dir/vvITKShapeDetectionModule.o

VolviewPlugIns/CMakeFiles/vvITKShapeDetectionModule.dir/depend: VolviewPlugIns/CMakeFiles/vvITKShapeDetectionModule.dir/depend.make.mark

VolviewPlugIns/CMakeFiles/vvITKShapeDetectionModule.dir/depend.make.mark:
	@echo "Scanning dependencies of target vvITKShapeDetectionModule"
	cd /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration && $(CMAKE_COMMAND) -E cmake_depends "KDevelop3" /home/erik/src/InsightApplications-3.8.0 /home/erik/src/InsightApplications-3.8.0/VolviewPlugIns /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/VolviewPlugIns /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/VolviewPlugIns/CMakeFiles/vvITKShapeDetectionModule.dir/DependInfo.cmake

# Object files for target vvITKShapeDetectionModule
vvITKShapeDetectionModule_OBJECTS = \
"CMakeFiles/vvITKShapeDetectionModule.dir/vvITKShapeDetectionModule.o"

# External object files for target vvITKShapeDetectionModule
vvITKShapeDetectionModule_EXTERNAL_OBJECTS =

VolviewPlugIns/libvvITKShapeDetectionModule.so: VolviewPlugIns/CMakeFiles/vvITKShapeDetectionModule.dir/vvITKShapeDetectionModule.o
VolviewPlugIns/libvvITKShapeDetectionModule.so: VolviewPlugIns/CMakeFiles/vvITKShapeDetectionModule.dir/build.make
	@echo "Linking CXX shared module libvvITKShapeDetectionModule.so"
	cd /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/VolviewPlugIns && $(CMAKE_COMMAND) -P CMakeFiles/vvITKShapeDetectionModule.dir/cmake_clean_target.cmake
	cd /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/VolviewPlugIns && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vvITKShapeDetectionModule.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
VolviewPlugIns/CMakeFiles/vvITKShapeDetectionModule.dir/build: VolviewPlugIns/libvvITKShapeDetectionModule.so

# Object files for target vvITKShapeDetectionModule
vvITKShapeDetectionModule_OBJECTS = \
"CMakeFiles/vvITKShapeDetectionModule.dir/vvITKShapeDetectionModule.o"

# External object files for target vvITKShapeDetectionModule
vvITKShapeDetectionModule_EXTERNAL_OBJECTS =

VolviewPlugIns/CMakeFiles/CMakeRelink.dir/libvvITKShapeDetectionModule.so: VolviewPlugIns/CMakeFiles/vvITKShapeDetectionModule.dir/vvITKShapeDetectionModule.o
VolviewPlugIns/CMakeFiles/CMakeRelink.dir/libvvITKShapeDetectionModule.so: VolviewPlugIns/CMakeFiles/vvITKShapeDetectionModule.dir/build.make
	@echo "Linking CXX shared module CMakeFiles/CMakeRelink.dir/libvvITKShapeDetectionModule.so"
	cd /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/VolviewPlugIns && $(CMAKE_COMMAND) -P CMakeFiles/vvITKShapeDetectionModule.dir/cmake_clean_target.cmake
	cd /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/VolviewPlugIns && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vvITKShapeDetectionModule.dir/relink.txt --verbose=$(VERBOSE)

# Rule to relink during preinstall.
VolviewPlugIns/CMakeFiles/vvITKShapeDetectionModule.dir/preinstall: VolviewPlugIns/CMakeFiles/CMakeRelink.dir/libvvITKShapeDetectionModule.so

VolviewPlugIns/CMakeFiles/vvITKShapeDetectionModule.dir/requires: VolviewPlugIns/CMakeFiles/vvITKShapeDetectionModule.dir/vvITKShapeDetectionModule.o.requires

VolviewPlugIns/CMakeFiles/vvITKShapeDetectionModule.dir/clean:
	cd /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/VolviewPlugIns && $(CMAKE_COMMAND) -P CMakeFiles/vvITKShapeDetectionModule.dir/cmake_clean.cmake

