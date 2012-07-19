include_directories(${CMAKE_SOURCE_DIR}/lib/Core)

option(ISIS_BUILD_BASIC_FILTER "Build the basic filters." ON)
option(ISIS_BUILD_GEOMETRY_FILTER "Build the geometry filters." OFF)


if( ISIS_BUILD_BASIC_FILTER )
  add_subdirectory(BasicFilter)
endif( ISIS_BUILD_BASIC_FILTER )

if( ISIS_BUILD_GEOMETRY_FILTER )
  add_subdirectory(GeometryFilter)
endif( ISIS_BUILD_GEOMETRY_FILTER )