include(CMakeFindDependencyMacro)

find_denpendency(Eigen3 REQUIRED)
if (Eigen3_FOUND)
    message(STATUS "here ${EIGEN3_VERSION_STRING}")
    include_directories(${EIGEN3_INCLUDE_DIR})
endif ()

find_denpendency(Boost REQUIRED)
if (Boost_FOUND)
    message(STATUS "here BOOST FOUNDED")
    include_directories(${Boost_INCLUDE_DIRS})
endif ()

find_denpendency(CGAL REQUIRED)
if (CGAL_FOUND)
    include(${CGAL_USE_FILE})
else ()
    message("here ERROR: this program requires CGAL and will not be compiled.")
endif ()

include("${CMAKE_CURRENT_LIST_DIR}/BGALTargets.cmake")
