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
include VolviewPlugIns/CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/depend.make

# Include the progress variables for this target.
include VolviewPlugIns/CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/progress.make

# Include the compile flags for this target's objects.
include VolviewPlugIns/CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/flags.make

VolviewPlugIns/CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/depend.make.mark: VolviewPlugIns/CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/flags.make
VolviewPlugIns/CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/depend.make.mark: ../VolviewPlugIns/vvITKRescaleIntensityTo8Bits.cxx

VolviewPlugIns/CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/vvITKRescaleIntensityTo8Bits.o: VolviewPlugIns/CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/flags.make
VolviewPlugIns/CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/vvITKRescaleIntensityTo8Bits.o: ../VolviewPlugIns/vvITKRescaleIntensityTo8Bits.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/CMakeFiles $(CMAKE_PROGRESS_1)
	@echo "Building CXX object VolviewPlugIns/CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/vvITKRescaleIntensityTo8Bits.o"
	/usr/bin/c++   $(CXX_FLAGS) -o VolviewPlugIns/CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/vvITKRescaleIntensityTo8Bits.o -c /home/erik/src/InsightApplications-3.8.0/VolviewPlugIns/vvITKRescaleIntensityTo8Bits.cxx

VolviewPlugIns/CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/vvITKRescaleIntensityTo8Bits.i: cmake_force
	@echo "Preprocessing CXX source to VolviewPlugIns/CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/vvITKRescaleIntensityTo8Bits.i"
	/usr/bin/c++  $(CXX_FLAGS) -E /home/erik/src/InsightApplications-3.8.0/VolviewPlugIns/vvITKRescaleIntensityTo8Bits.cxx > VolviewPlugIns/CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/vvITKRescaleIntensityTo8Bits.i

VolviewPlugIns/CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/vvITKRescaleIntensityTo8Bits.s: cmake_force
	@echo "Compiling CXX source to assembly VolviewPlugIns/CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/vvITKRescaleIntensityTo8Bits.s"
	/usr/bin/c++  $(CXX_FLAGS) -S /home/erik/src/InsightApplications-3.8.0/VolviewPlugIns/vvITKRescaleIntensityTo8Bits.cxx -o VolviewPlugIns/CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/vvITKRescaleIntensityTo8Bits.s

VolviewPlugIns/CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/vvITKRescaleIntensityTo8Bits.o.requires:

VolviewPlugIns/CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/vvITKRescaleIntensityTo8Bits.o.provides: VolviewPlugIns/CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/vvITKRescaleIntensityTo8Bits.o.requires
	$(MAKE) -f VolviewPlugIns/CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/build.make VolviewPlugIns/CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/vvITKRescaleIntensityTo8Bits.o.provides.build

VolviewPlugIns/CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/vvITKRescaleIntensityTo8Bits.o.provides.build: VolviewPlugIns/CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/vvITKRescaleIntensityTo8Bits.o

VolviewPlugIns/CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/depend: VolviewPlugIns/CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/depend.make.mark

VolviewPlugIns/CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/depend.make.mark:
	@echo "Scanning dependencies of target vvITKRescaleIntensityTo8Bits"
	cd /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration && $(CMAKE_COMMAND) -E cmake_depends "KDevelop3" /home/erik/src/InsightApplications-3.8.0 /home/erik/src/InsightApplications-3.8.0/VolviewPlugIns /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/VolviewPlugIns /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/VolviewPlugIns/CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/DependInfo.cmake

# Object files for target vvITKRescaleIntensityTo8Bits
vvITKRescaleIntensityTo8Bits_OBJECTS = \
"CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/vvITKRescaleIntensityTo8Bits.o"

# External object files for target vvITKRescaleIntensityTo8Bits
vvITKRescaleIntensityTo8Bits_EXTERNAL_OBJECTS =

VolviewPlugIns/libvvITKRescaleIntensityTo8Bits.so: VolviewPlugIns/CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/vvITKRescaleIntensityTo8Bits.o
VolviewPlugIns/libvvITKRescaleIntensityTo8Bits.so: VolviewPlugIns/CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/build.make
	@echo "Linking CXX shared module libvvITKRescaleIntensityTo8Bits.so"
	cd /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/VolviewPlugIns && $(CMAKE_COMMAND) -P CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/cmake_clean_target.cmake
	cd /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/VolviewPlugIns && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
VolviewPlugIns/CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/build: VolviewPlugIns/libvvITKRescaleIntensityTo8Bits.so

# Object files for target vvITKRescaleIntensityTo8Bits
vvITKRescaleIntensityTo8Bits_OBJECTS = \
"CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/vvITKRescaleIntensityTo8Bits.o"

# External object files for target vvITKRescaleIntensityTo8Bits
vvITKRescaleIntensityTo8Bits_EXTERNAL_OBJECTS =

VolviewPlugIns/CMakeFiles/CMakeRelink.dir/libvvITKRescaleIntensityTo8Bits.so: VolviewPlugIns/CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/vvITKRescaleIntensityTo8Bits.o
VolviewPlugIns/CMakeFiles/CMakeRelink.dir/libvvITKRescaleIntensityTo8Bits.so: VolviewPlugIns/CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/build.make
	@echo "Linking CXX shared module CMakeFiles/CMakeRelink.dir/libvvITKRescaleIntensityTo8Bits.so"
	cd /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/VolviewPlugIns && $(CMAKE_COMMAND) -P CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/cmake_clean_target.cmake
	cd /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/VolviewPlugIns && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/relink.txt --verbose=$(VERBOSE)

# Rule to relink during preinstall.
VolviewPlugIns/CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/preinstall: VolviewPlugIns/CMakeFiles/CMakeRelink.dir/libvvITKRescaleIntensityTo8Bits.so

VolviewPlugIns/CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/requires: VolviewPlugIns/CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/vvITKRescaleIntensityTo8Bits.o.requires

VolviewPlugIns/CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/clean:
	cd /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/VolviewPlugIns && $(CMAKE_COMMAND) -P CMakeFiles/vvITKRescaleIntensityTo8Bits.dir/cmake_clean.cmake

