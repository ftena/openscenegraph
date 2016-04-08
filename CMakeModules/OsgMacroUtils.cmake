###########################################################
# this is the macro for example and application setup
###########################################################

MACRO(SETUP_EXE)

    SET(TARGET_TARGETNAME "${TARGET_DEFAULT_PREFIX}${TARGET_NAME}")

    add_executable(${TARGET_TARGETNAME} ${TARGET_SRC} ${TARGET_H})
    target_link_libraries(${TARGET_TARGETNAME} ${OPENSCENEGRAPH_LIBRARIES})
    target_link_libraries(${TARGET_TARGETNAME} ${Boost_LIBRARIES})	

ENDMACRO(SETUP_EXE)

MACRO(SETUP_EXAMPLE EXAMPLE_NAME)
	
	SET(TARGET_NAME ${EXAMPLE_NAME})
	
	SETUP_EXE()	

ENDMACRO(SETUP_EXAMPLE)

MACRO(SETUP_QT_EXAMPLE EXAMPLE_NAME)

	SETUP_EXAMPLE(${EXAMPLE_NAME})

	target_link_libraries(${TARGET_TARGETNAME} Qt5::Widgets)

ENDMACRO(SETUP_QT_EXAMPLE)

MACRO(SETUP_OPENGL_EXAMPLE EXAMPLE_NAME)

	SETUP_EXAMPLE(${EXAMPLE_NAME})

	target_link_libraries(${TARGET_TARGETNAME} ${OPENGL_LIBRARIES})

ENDMACRO(SETUP_OPENGL_EXAMPLE)
