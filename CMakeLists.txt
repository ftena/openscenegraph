cmake_minimum_required (VERSION 2.8)
project(OpenSceneGraph-Tutorials)

set(CMAKE_MODULE_PATH ${OpenSceneGraph-Tutorials_SOURCE_DIR}/CMakeModules)

# OSG_DIR env. var must be set in the system
# example: export OSG_DIR=~/devel/openscenegraph-3.4.0/
find_package(OpenSceneGraph 3.4.0 REQUIRED osgDB osgUtil osgViewer)
# libOpenThreads & libosg automatically searched
include_directories(${OPENSCENEGRAPH_INCLUDE_DIRS})

include(OsgMacroUtils)

add_subdirectory(examples)


