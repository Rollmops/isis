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
include MultichannelTissueClassificationValidation/CMakeFiles/KmeansMSClassificationApp.dir/depend.make

# Include the progress variables for this target.
include MultichannelTissueClassificationValidation/CMakeFiles/KmeansMSClassificationApp.dir/progress.make

# Include the compile flags for this target's objects.
include MultichannelTissueClassificationValidation/CMakeFiles/KmeansMSClassificationApp.dir/flags.make

MultichannelTissueClassificationValidation/CMakeFiles/KmeansMSClassificationApp.dir/depend.make.mark: MultichannelTissueClassificationValidation/CMakeFiles/KmeansMSClassificationApp.dir/flags.make
MultichannelTissueClassificationValidation/CMakeFiles/KmeansMSClassificationApp.dir/depend.make.mark: ../MultichannelTissueClassificationValidation/Code/KmeansMSClassifierValidationApp.cxx

MultichannelTissueClassificationValidation/CMakeFiles/KmeansMSClassificationApp.dir/Code/KmeansMSClassifierValidationApp.o: MultichannelTissueClassificationValidation/CMakeFiles/KmeansMSClassificationApp.dir/flags.make
MultichannelTissueClassificationValidation/CMakeFiles/KmeansMSClassificationApp.dir/Code/KmeansMSClassifierValidationApp.o: ../MultichannelTissueClassificationValidation/Code/KmeansMSClassifierValidationApp.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/CMakeFiles $(CMAKE_PROGRESS_1)
	@echo "Building CXX object MultichannelTissueClassificationValidation/CMakeFiles/KmeansMSClassificationApp.dir/Code/KmeansMSClassifierValidationApp.o"
	/usr/bin/c++   $(CXX_FLAGS) -o MultichannelTissueClassificationValidation/CMakeFiles/KmeansMSClassificationApp.dir/Code/KmeansMSClassifierValidationApp.o -c /home/erik/src/InsightApplications-3.8.0/MultichannelTissueClassificationValidation/Code/KmeansMSClassifierValidationApp.cxx

MultichannelTissueClassificationValidation/CMakeFiles/KmeansMSClassificationApp.dir/Code/KmeansMSClassifierValidationApp.i: cmake_force
	@echo "Preprocessing CXX source to MultichannelTissueClassificationValidation/CMakeFiles/KmeansMSClassificationApp.dir/Code/KmeansMSClassifierValidationApp.i"
	/usr/bin/c++  $(CXX_FLAGS) -E /home/erik/src/InsightApplications-3.8.0/MultichannelTissueClassificationValidation/Code/KmeansMSClassifierValidationApp.cxx > MultichannelTissueClassificationValidation/CMakeFiles/KmeansMSClassificationApp.dir/Code/KmeansMSClassifierValidationApp.i

MultichannelTissueClassificationValidation/CMakeFiles/KmeansMSClassificationApp.dir/Code/KmeansMSClassifierValidationApp.s: cmake_force
	@echo "Compiling CXX source to assembly MultichannelTissueClassificationValidation/CMakeFiles/KmeansMSClassificationApp.dir/Code/KmeansMSClassifierValidationApp.s"
	/usr/bin/c++  $(CXX_FLAGS) -S /home/erik/src/InsightApplications-3.8.0/MultichannelTissueClassificationValidation/Code/KmeansMSClassifierValidationApp.cxx -o MultichannelTissueClassificationValidation/CMakeFiles/KmeansMSClassificationApp.dir/Code/KmeansMSClassifierValidationApp.s

MultichannelTissueClassificationValidation/CMakeFiles/KmeansMSClassificationApp.dir/Code/KmeansMSClassifierValidationApp.o.requires:

MultichannelTissueClassificationValidation/CMakeFiles/KmeansMSClassificationApp.dir/Code/KmeansMSClassifierValidationApp.o.provides: MultichannelTissueClassificationValidation/CMakeFiles/KmeansMSClassificationApp.dir/Code/KmeansMSClassifierValidationApp.o.requires
	$(MAKE) -f MultichannelTissueClassificationValidation/CMakeFiles/KmeansMSClassificationApp.dir/build.make MultichannelTissueClassificationValidation/CMakeFiles/KmeansMSClassificationApp.dir/Code/KmeansMSClassifierValidationApp.o.provides.build

MultichannelTissueClassificationValidation/CMakeFiles/KmeansMSClassificationApp.dir/Code/KmeansMSClassifierValidationApp.o.provides.build: MultichannelTissueClassificationValidation/CMakeFiles/KmeansMSClassificationApp.dir/Code/KmeansMSClassifierValidationApp.o

MultichannelTissueClassificationValidation/CMakeFiles/KmeansMSClassificationApp.dir/depend: MultichannelTissueClassificationValidation/CMakeFiles/KmeansMSClassificationApp.dir/depend.make.mark

MultichannelTissueClassificationValidation/CMakeFiles/KmeansMSClassificationApp.dir/depend.make.mark:
	@echo "Scanning dependencies of target KmeansMSClassificationApp"
	cd /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration && $(CMAKE_COMMAND) -E cmake_depends "KDevelop3" /home/erik/src/InsightApplications-3.8.0 /home/erik/src/InsightApplications-3.8.0/MultichannelTissueClassificationValidation /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/MultichannelTissueClassificationValidation /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/MultichannelTissueClassificationValidation/CMakeFiles/KmeansMSClassificationApp.dir/DependInfo.cmake

# Object files for target KmeansMSClassificationApp
KmeansMSClassificationApp_OBJECTS = \
"CMakeFiles/KmeansMSClassificationApp.dir/Code/KmeansMSClassifierValidationApp.o"

# External object files for target KmeansMSClassificationApp
KmeansMSClassificationApp_EXTERNAL_OBJECTS =

MultichannelTissueClassificationValidation/KmeansMSClassificationApp: MultichannelTissueClassificationValidation/CMakeFiles/KmeansMSClassificationApp.dir/Code/KmeansMSClassifierValidationApp.o
MultichannelTissueClassificationValidation/KmeansMSClassificationApp: MultichannelTissueClassificationValidation/CMakeFiles/KmeansMSClassificationApp.dir/build.make
	@echo "Linking CXX executable KmeansMSClassificationApp"
	cd /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/MultichannelTissueClassificationValidation && $(CMAKE_COMMAND) -P CMakeFiles/KmeansMSClassificationApp.dir/cmake_clean_target.cmake
	cd /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/MultichannelTissueClassificationValidation && /usr/bin/c++      -ftemplate-depth-50 -Wall  -fPIC   $(KmeansMSClassificationApp_OBJECTS) $(KmeansMSClassificationApp_EXTERNAL_OBJECTS)  -o KmeansMSClassificationApp -rdynamic -L/home/erik/src/InsightToolkit-3.8.0/build/bin -lITKAlgorithms -lITKCommon -lITKBasicFilters -lITKBasicFilters -lITKIO -lITKStatistics -lITKNumerics -lITKNrrdIO -litkgdcm -litkjpeg12 -litkjpeg16 -litkopenjpeg -litkpng -litktiff -litkjpeg8 -lITKSpatialObject -lITKCommon -litkvnl_inst -litkvnl_algo -litkv3p_netlib -litkvnl -litkvcl -lm -lpthread -lITKMetaIO -litksys -ldl -lITKDICOMParser -lITKEXPAT -lITKniftiio -lITKznz -litkzlib -lm -Wl,-rpath,/home/erik/src/InsightToolkit-3.8.0/build/bin 

# Rule to build all files generated by this target.
MultichannelTissueClassificationValidation/CMakeFiles/KmeansMSClassificationApp.dir/build: MultichannelTissueClassificationValidation/KmeansMSClassificationApp

# Object files for target KmeansMSClassificationApp
KmeansMSClassificationApp_OBJECTS = \
"CMakeFiles/KmeansMSClassificationApp.dir/Code/KmeansMSClassifierValidationApp.o"

# External object files for target KmeansMSClassificationApp
KmeansMSClassificationApp_EXTERNAL_OBJECTS =

MultichannelTissueClassificationValidation/CMakeFiles/CMakeRelink.dir/KmeansMSClassificationApp: MultichannelTissueClassificationValidation/CMakeFiles/KmeansMSClassificationApp.dir/Code/KmeansMSClassifierValidationApp.o
MultichannelTissueClassificationValidation/CMakeFiles/CMakeRelink.dir/KmeansMSClassificationApp: MultichannelTissueClassificationValidation/CMakeFiles/KmeansMSClassificationApp.dir/build.make
	@echo "Linking CXX executable CMakeFiles/CMakeRelink.dir/KmeansMSClassificationApp"
	cd /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/MultichannelTissueClassificationValidation && $(CMAKE_COMMAND) -P CMakeFiles/KmeansMSClassificationApp.dir/cmake_clean_target.cmake
	cd /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/MultichannelTissueClassificationValidation && /usr/bin/c++      -ftemplate-depth-50 -Wall  -fPIC   $(KmeansMSClassificationApp_OBJECTS) $(KmeansMSClassificationApp_EXTERNAL_OBJECTS)  -o CMakeFiles/CMakeRelink.dir/KmeansMSClassificationApp -rdynamic -L/home/erik/src/InsightToolkit-3.8.0/build/bin -lITKAlgorithms -lITKCommon -lITKBasicFilters -lITKBasicFilters -lITKIO -lITKStatistics -lITKNumerics -lITKNrrdIO -litkgdcm -litkjpeg12 -litkjpeg16 -litkopenjpeg -litkpng -litktiff -litkjpeg8 -lITKSpatialObject -lITKCommon -litkvnl_inst -litkvnl_algo -litkv3p_netlib -litkvnl -litkvcl -lm -lpthread -lITKMetaIO -litksys -ldl -lITKDICOMParser -lITKEXPAT -lITKniftiio -lITKznz -litkzlib -lm 

# Rule to relink during preinstall.
MultichannelTissueClassificationValidation/CMakeFiles/KmeansMSClassificationApp.dir/preinstall: MultichannelTissueClassificationValidation/CMakeFiles/CMakeRelink.dir/KmeansMSClassificationApp

MultichannelTissueClassificationValidation/CMakeFiles/KmeansMSClassificationApp.dir/requires: MultichannelTissueClassificationValidation/CMakeFiles/KmeansMSClassificationApp.dir/Code/KmeansMSClassifierValidationApp.o.requires

MultichannelTissueClassificationValidation/CMakeFiles/KmeansMSClassificationApp.dir/clean:
	cd /home/erik/src/InsightApplications-3.8.0/LandmarkInitializedMutualInformationRegistration/MultichannelTissueClassificationValidation && $(CMAKE_COMMAND) -P CMakeFiles/KmeansMSClassificationApp.dir/cmake_clean.cmake

