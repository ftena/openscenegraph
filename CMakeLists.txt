cmake_minimum_required (VERSION 3.3)
project(OpenSceneGraph-Tutorials)

set(CMAKE_MODULE_PATH ${OpenSceneGraph-Tutorials_SOURCE_DIR}/CMakeModules)

## find boost package
IF (WIN32)
  set(BOOST_ROOT C:/workspace/boost_1_60_0)
  set(BOOST_INCLUDEDIR C:/workspace/boost_1_60_0)
  set(BOOST_LIBRARYDIR C:/workspace/boost_1_60_0/lib64-msvc-12.0)

  set(Boost_INCLUDE_DIRS C:/workspace/boost_1_60_0)
  set(Boost_LIBRARY_DIRS C:/workspace/boost_1_60_0/lib64-msvc-12.0)

  set(Boost_USE_STATIC_LIBS        ON)
  set(Boost_USE_MULTITHREADED      ON)
  set(Boost_USE_STATIC_RUNTIME    OFF)
ENDIF(WIN32)

find_package( Boost COMPONENTS program_options )

include_directories(${Boost_INCLUDE_DIRS})
link_directories(${Boost_LIBRARY_DIRS})

# libOpenThreads & libosg automatically searched
# if linking problems, add new REQUIRED libraries
IF (WIN32)
  set(OSG_DIR C:/workspace/osg/OpenSceneGraph-3.4.0-binaries)
ENDIF(WIN32)

find_package(OpenSceneGraph 3.4.0 COMPONENTS osgGA osgDB osgUtil osgViewer osgQt)

if(OPENSCENEGRAPH_FOUND)
    include_directories(${OPENSCENEGRAPH_INCLUDE_DIRS})
else(OPENSCENEGRAPH_FOUND)
    message(FATAL_ERROR "OpenSceneGraph not found --- set the environment \
                        variable OSG_DIR. Example: \
                        export OSG_DIR=~/openscenegraph-3.4.0/ \
                        ")
endif(OPENSCENEGRAPH_FOUND)

include(OsgMacroUtils)

# find QT
find_package(Qt5Widgets)
find_package(Qt5WebKitWidgets)
find_package(Qt5OpenGL)

include_directories(${Qt5Widgets_INCLUDE_DIRS})
include_directories(${Qt5Core_INCLUDE_DIRS})
include_directories(${Qt5OpenGL_INCLUDE_DIRS})

add_subdirectory(apps)
add_subdirectory(examples)
