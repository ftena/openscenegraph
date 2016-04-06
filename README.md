# openscenegraph
[OpenSceneGraph](http://www.openscenegraph.org/) (OSG) projects

Dependencies:

- OSG 3.4 64 bits
- Qt 5.5
- boost

## OSG

To build the examples against OSG, there are some tips to take into account: 

- Use CMake to generate the project. In Windows, OSG was compiled with Visual Studio 12 2013 Wind 64.
- Dependencies can be downloaded from http://www.openscenegraph.org/index.php/download-section/dependencies
- Other dependencies:
  - [SDL 2](https://www.libsdl.org/download-2.0.php)
  - [FLTK 1.3.3](http://www.fltk.org/software.php)
- To compile Qt OSG libraries, you need Qt, obviously, and to download the Visual Studio addin 'msvc2013_64'
  - Example of CMake configuration to compile Qt OSG libraries:

	````  
	Qt5Widgets_DIR: C:/Qt/5.5/msvc2013_64/include/QtWidgets
	CMAKE_PREFIX_PATH: C:/Qt/5.5/msvc2013_64
	QT_QMAKE_EXECUTABLE: C:/Qt/5.5/msvc2013_64/bin/qmake.exe
	DESIRED_QT_VERSION: 5
	````
  - `DESIRED_QT_VERSION` is a variable which must be added to CMake manually
