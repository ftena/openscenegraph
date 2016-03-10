###########################################################
# this is the macro for example and application setup
###########################################################

#MACRO(SETUP_EXE IS_COMMANDLINE_APP)
MACRO(SETUP_EXE)

    SET(TARGET_TARGETNAME "${TARGET_DEFAULT_PREFIX}${TARGET_NAME}")

    add_executable(${TARGET_TARGETNAME} ${TARGET_SRC} ${TARGET_H})
    target_link_libraries(${TARGET_TARGETNAME} ${OPENSCENEGRAPH_LIBRARIES})

ENDMACRO(SETUP_EXE)

# Takes optional second argument (is_commandline_app?) in ARGV1
MACRO(SETUP_EXAMPLE EXAMPLE_NAME)

    SET(TARGET_NAME ${EXAMPLE_NAME} )
    SETUP_EXE()

ENDMACRO(SETUP_EXAMPLE)

