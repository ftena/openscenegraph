###########################################################
# this is the macro for example and application setup
###########################################################

#MACRO(SETUP_EXE IS_COMMANDLINE_APP)
MACRO(SETUP_EXE IS_QT_APP)

    SET(TARGET_TARGETNAME "${TARGET_DEFAULT_PREFIX}${TARGET_NAME}")

    add_executable(${TARGET_TARGETNAME} ${TARGET_SRC} ${TARGET_H})
    target_link_libraries(${TARGET_TARGETNAME} ${OPENSCENEGRAPH_LIBRARIES})
    target_link_libraries(${TARGET_TARGETNAME} ${Boost_LIBRARIES})		
	
	IF(${IS_QT_APP})		
        target_link_libraries(${TARGET_TARGETNAME} Qt5::Widgets)
    ENDIF(${IS_QT_APP})

ENDMACRO(SETUP_EXE)

MACRO(SETUP_EXAMPLE EXAMPLE_NAME)
	
	SET(TARGET_NAME ${EXAMPLE_NAME} )
	
	IF(${ARGC} GREATER 1)
		# Qt app
         SETUP_EXE(${ARGV1})
    ELSE(${ARGC} GREATER 1)    
		# Non Qt app
		SETUP_EXE(0)
	ENDIF(${ARGC} GREATER 1)

ENDMACRO(SETUP_EXAMPLE)

