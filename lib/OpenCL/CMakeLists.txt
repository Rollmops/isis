############################################################
# The ISIS project
#
# CMake configuration file of the ISIS opencl library
#
# Author: Erik Tuerke <etuerke@googlemail.com>
# Date: Wed, 25 Jul 2012 09:16:10 +0200
#
############################################################
include_directories(${CMAKE_SOURCE_DIR}/lib/Core)

find_package(OPENCL REQUIRED)

set(ISIS_OPENCL_CPP error.cpp )

file(GLOB OPENCL_HDR_FILES "*.hpp")

add_library(isis_opencl SHARED ${ISIS_OPENCL_CPP})

target_link_libraries(isis_opencl isis_core ${OPENCL_LIBRARIES})

install(TARGETS isis_opencl LIBRARY DESTINATION lib COMPONENT "opencl" )
install(FILES ${OPENCL_HDR_FILES} DESTINATION include/isis/OpenCL COMPONENT Development )
