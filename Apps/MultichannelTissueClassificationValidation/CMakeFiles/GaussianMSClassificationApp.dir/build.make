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
include MultichannelTissueClassificationValidation/CMakeFiles/GaussianMSClassificationApp.dir/depend.make

# Include the progress variables for this target.
include MultichannelTissueClassificationValidation/CMakeFiles/GaussianMSClassificationApp.dir/progress.make

# Include the compile flags for this target's objects.
include MultichannelTissueClassificationValidation/CMakeFiles/GaussianMSClassificationApp.dir/flags.make

MultichannelTissueClassificationValidation/CMakeFiles/GaussianMSClassificationApp.dir/depend.make.mark: MultichannelTissueClassificationValidation/CMakeFiles/GaussianMSClassificationApp.dir/flags.make
MultichannelTissueClassificationValidation/CMakeFiles/GaussianMSClassificationApp.dir/depend.make.mark: ../MultichannelTissueClassificationValidation/Code/GaussianMSClassifierValidationApp.cxx

MultichannelTissueClassificationValidation/CMakeFiles/GaussianMSClassificationApp.dir/Code/GaussianMSClassifierValidationApp.o: MultichannelTissueClassificationValidation/CMakeFiles/GaussianMSClassificationApp.dir/flags.make
MultichannelTissueClassificationValidation/CMakeFiles/GaussianMSClassificationApp.dir/Code/GaussianMSClassifierValidationApp.o: ../MultichannelTissueClassificationValidation/Code/GaussianMSClassifierValidationApp.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/CMakeFiles $(CMAKE_PROGRESS_1)
	@echo "Building CXX object MultichannelTissueClassificationValidation/CMakeFiles/GaussianMSClassificationApp.dir/Code/GaussianMSClassifierValidationApp.o"
	/usr/bin/c++   $(CXX_FLAGS) -o MultichannelTissueClassificationValidation/CMakeFiles/GaussianMSClassificationApp.dir/Code/GaussianMSClassifierValidationApp.o -c /home/erik/src/InsightApplications-3.8.0/MultichannelTissueClassificationValidation/Code/GaussianMSClassifierValidationApp.cxx

MultichannelTissueClassificationValidation/CMakeFiles/GaussianMSClassificationApp.dir/Code/GaussianMSClassifierValidationApp.i: cmake_force
	@echo "Preprocessing CXX source to MultichannelTissueClassificationValidation/CMakeFiles/GaussianMSClassificationApp.dir/Code/GaussianMSClassifierValidationApp.i"
	/usr/bin/c++  $(CXX_FLAGS) -E /home/erik/src/InsightApplications-3.8.0/MultichannelTissueClassificationValidation/Code/GaussianMSClassifierValidationApp.cxx > MultichannelTissueClassificationValidation/CMakeFiles/GaussianMSClassificationApp.dir/Code/GaussianMSClassifierValidationApp.i

MultichannelTissueClassificationValidation/CMakeFiles/GaussianMSClassificationApp.dir/Code/GaussianMSClassifierValidationApp.s: cmake_force
	@echo "Compiling CXX source to assembly MultichannelTissueClassificationValidation/CMakeFiles/GaussianMSClassificationApp.dir/Code/GaussianMSClassifierValidationApp.s"
	/usr/bin/c++  $(CXX_FLAGS) -S /home/erik/src/InsightApplications-3.8.0/MultichannelTissueClassificationValidation/Code/GaussianMSClassifierValidationApp.cxx -o MultichannelTissueClassificationValidation/CMakeFiles/GaussianMSClassificationApp.dir/Code/GaussianMSClassifierValidationApp.s

MultichannelTissueClassificationValidation/CMakeFiles/GaussianMSClassificationApp.dir/Code/GaussianMSClassifierValidationApp.o.requires:

MultichannelTissueClassificationValidation/CMakeFiles/GaussianMSClassificationApp.dir/Code/GaussianMSClassifierValidationApp.o.provides: MultichannelTissueClassificationValidation/CMakeFiles/GaussianMSClassificationApp.dir/Code/GaussianMSClassifierValidationApp.o.requires
	$(MAKE) -f MultichannelTissueClassificationValidation/CMakeFiles/GaussianMSClassificationApp.dir/build.make MultichannelTissueClassificationValidation/CMakeFiles/GaussianMSClassificationApp.dir/Code/GaussianMSClassifierValidationApp.o.provides.build

MultichannelTissueClassificationValidation/CMakeFiles/GaussianMSClassificationApp.dir/Code/GaussianMSClassifierValidationApp.o.provides.build: MultichannelTissueClassificationValidation/CMakeFiles/GaussianMSClassificationApp.dir/Code/GaussianMSClassifierValidationApp.o

MultichannelTissueClassificationValidation/CMakeFiles/GaussianMSClassificationApp.dir/depend: MultichannelTissueClassificationValidation/CMakeFiles/GaussianMSClassificationApp.dir/depend.make.mark

MultichannelTissueClassificationValidation/CMakeFiles/GaussianMSClassificationApp.dir/depend.make.mark:
	@echo "Scanning dependencies of target GaussianMSClassificationApp"
	cd /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration && $(CMAKE_COMMAND) -E cmake_depends "KDevelop3" /home/erik/src/InsightApplications-3.8.0 /home/erik/src/InsightApplications-3.8.0/MultichannelTissueClassificationValidation /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/MultichannelTissueClassificationValidation /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/MultichannelTissueClassificationValidation/CMakeFiles/GaussianMSClassificationApp.dir/DependInfo.cmake

# Object files for target GaussianMSClassificationApp
GaussianMSClassificationApp_OBJECTS = \
"CMakeFiles/GaussianMSClassificationApp.dir/Code/GaussianMSClassifierValidationApp.o"

# External object files for target GaussianMSClassificationApp
GaussianMSClassificationApp_EXTERNAL_OBJECTS =

MultichannelTissueClassificationValidation/GaussianMSClassificationApp: MultichannelTissueClassificationValidation/CMakeFiles/GaussianMSClassificationApp.dir/Code/GaussianMSClassifierValidationApp.o
MultichannelTissueClassificationValidation/GaussianMSClassificationApp: MultichannelTissueClassificationValidation/CMakeFiles/GaussianMSClassificationApp.dir/build.make
	@echo "Linking CXX executable GaussianMSClassificationApp"
	cd /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/MultichannelTissueClassificationValidation && $(CMAKE_COMMAND) -P CMakeFiles/GaussianMSClassificationApp.dir/cmake_clean_target.cmake
	cd /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/MultichannelTissueClassificationValidation && /usr/bin/c++      -ftemplate-depth-50 -Wall  -fPIC   $(GaussianMSClassificationApp_OBJECTS) $(GaussianMSClassificationApp_EXTERNAL_OBJECTS)  -o GaussianMSClassificationApp -rdynamic -L/home/erik/src/InsightToolkit-3.8.0/build/bin -lITKAlgorithms -lITKCommon -lITKBasicFilters -lITKBasicFilters -lITKIO -lITKStatistics -lITKNumerics -lITKNrrdIO -litkgdcm -litkjpeg12 -litkjpeg16 -litkopenjpeg -litkpng -litktiff -litkjpeg8 -lITKSpatialObject -lITKCommon -litkvnl_inst -litkvnl_algo -litkv3p_netlib -litkvnl -litkvcl -lm -lpthread -lITKMetaIO -litksys -ldl -lITKDICOMParser -lITKEXPAT -lITKniftiio -lITKznz -litkzlib -lm -Wl,-rpath,/home/erik/src/InsightToolkit-3.8.0/build/bin 

# Rule to build all files generated by this target.
MultichannelTissueClassificationValidation/CMakeFiles/GaussianMSClassificationApp.dir/build: MultichannelTissueClassificationValidation/GaussianMSClassificationApp

# Object files for target GaussianMSClassificationApp
GaussianMSClassificationApp_OBJECTS = \
"CMakeFiles/GaussianMSClassificationApp.dir/Code/GaussianMSClassifierValidationApp.o"

# External object files for target GaussianMSClassificationApp
GaussianMSClassificationApp_EXTERNAL_OBJECTS =

MultichannelTissueClassificationValidation/CMakeFiles/CMakeRelink.dir/GaussianMSClassificationApp: MultichannelTissueClassificationValidation/CMakeFiles/GaussianMSClassificationApp.dir/Code/GaussianMSClassifierValidationApp.o
MultichannelTissueClassificationValidation/CMakeFiles/CMakeRelink.dir/GaussianMSClassificationApp: MultichannelTissueClassificationValidation/CMakeFiles/GaussianMSClassificationApp.dir/build.make
	@echo "Linking CXX executable CMakeFiles/CMakeRelink.dir/GaussianMSClassificationApp"
	cd /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/MultichannelTissueClassificationValidation && $(CMAKE_COMMAND) -P CMakeFiles/GaussianMSClassificationApp.dir/cmake_clean_target.cmake
	cd /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/MultichannelTissueClassificationValidation && /usr/bin/c++      -ftemplate-depth-50 -Wall  -fPIC   $(GaussianMSClassificationApp_OBJECTS) $(GaussianMSClassificationApp_EXTERNAL_OBJECTS)  -o CMakeFiles/CMakeRelink.dir/GaussianMSClassificationApp -rdynamic -L/home/erik/src/InsightToolkit-3.8.0/build/bin -lITKAlgorithms -lITKCommon -lITKBasicFilters -lITKBasicFilters -lITKIO -lITKStatistics -lITKNumerics -lITKNrrdIO -litkgdcm -litkjpeg12 -litkjpeg16 -litkopenjpeg -litkpng -litktiff -litkjpeg8 -lITKSpatialObject -lITKCommon -litkvnl_inst -litkvnl_algo -litkv3p_netlib -litkvnl -litkvcl -lm -lpthread -lITKMetaIO -litksys -ldl -lITKDICOMParser -lITKEXPAT -lITKniftiio -lITKznz -litkzlib -lm 

# Rule to relink during preinstall.
MultichannelTissueClassificationValidation/CMakeFiles/GaussianMSClassificationApp.dir/preinstall: MultichannelTissueClassificationValidation/CMakeFiles/CMakeRelink.dir/GaussianMSClassificationApp

MultichannelTissueClassificationValidation/CMakeFiles/GaussianMSClassificationApp.dir/requires: MultichannelTissueClassificationValidation/CMakeFiles/GaussianMSClassificationApp.dir/Code/GaussianMSClassifierValidationApp.o.requires

MultichannelTissueClassificationValidation/CMakeFiles/GaussianMSClassificationApp.dir/clean:
	cd /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/MultichannelTissueClassificationValidation && $(CMAKE_COMMAND) -P CMakeFiles/GaussianMSClassificationApp.dir/cmake_clean.cmake

