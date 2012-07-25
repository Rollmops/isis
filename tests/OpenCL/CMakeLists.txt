############################################################
# The ISIS project
#
# Main CMake configuration file of the ISIS OpenCL tests.
#
# Author: Erik Tuerke <etuerke@googlemail.com>
# Date: Wed, 25 Jul 2012 10:03:25 +0200
#
############################################################

include_directories(${CMAKE_SOURCE_DIR}/lib/OpenCL)

############################################################
# configure targets
############################################################

add_executable( openCLTest openCLTest.cpp )

target_link_libraries( openCLTest ${Boost_LIBRARIES} isis_core isis_opencl)

############################################################
# add unit test targets
############################################################

add_test(NAME openCLTest COMMAND openCLTest )