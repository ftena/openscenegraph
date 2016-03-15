cmake_minimum_required (VERSION 2.8)
project(OpenSceneGraph-Tutorials)

set(CMAKE_MODULE_PATH ${OpenSceneGraph-Tutorials_SOURCE_DIR}/CMakeModules)

## find boost package
find_package( Boost COMPONENTS program_options REQUIRED )
if(BOOST_FOUND)
    include_directories(${Boost_INCLUDE_DIRS})
    link_directories(${Boost_LIBRARY_DIRS})
endif(BOOST_FOUND)

# libOpenThreads & libosg automatically searched
# if linking problems, add new REQUIRED libraries 
find_package(OpenSceneGraph 3.4.0 COMPONENTS osgGA osgDB osgUtil osgViewer)

if(OPENSCENEGRAPH_FOUND)
    include_directories(${OPENSCENEGRAPH_INCLUDE_DIRS})
else(OPENSCENEGRAPH_FOUND)
    message(FATAL_ERROR "OpenSceneGraph not found --- set the environment \
                        variable OSG_DIR. Example: \
                        export OSG_DIR=~/openscenegraph-3.4.0/ \
                        ")
endif(OPENSCENEGRAPH_FOUND)

include(OsgMacroUtils)

add_subdirectory(examples)


