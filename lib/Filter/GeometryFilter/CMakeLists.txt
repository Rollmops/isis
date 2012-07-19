include_directories(${CMAKE_SOURCE_DIR}/lib/Core)

set(GEOMETRY_FILTER ResampleFilter.cpp
					BoundingBoxFilter.cpp)

file(GLOB GEOMETRY_FILTER_HDR_FILES "*.hpp")

add_library(isisFilter_Geometry SHARED ${GEOMETRY_FILTER} ../filter.cpp)
target_link_libraries(isisFilter_Geometry isis_core)

if(WIN32)
install(TARGETS isisFilter_Geometry  RUNTIME DESTINATION bin COMPONENT "filter")
install(FILES ${GEOMETRY_FILTER_HDR_FILES} DESTINATION include/isis/Filter COMPONENT Development )
else(WIN32)
install(TARGETS isisFilter_Geometry DESTINATION ${ISIS_FILTER_INFIX} COMPONENT "filter" )
install(FILES ${GEOMETRY_FILTER_HDR_FILES} DESTINATION include/isis/Filter COMPONENT Development )
endif(WIN32)