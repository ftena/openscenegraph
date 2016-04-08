SET(TARGET_SRC shadow_effect.cpp )
#### end var setup  ###
SETUP_EXAMPLE(shadow_effect)

set(TextureFiles
    ${CMAKE_CURRENT_SOURCE_DIR}/Fieldstone.jpg
	${CMAKE_CURRENT_SOURCE_DIR}/terrain.jpg
    )

foreach(TextureFile ${TextureFiles})
    add_custom_command(TARGET shadow_effect PRE_BUILD
                       COMMAND ${CMAKE_COMMAND} -E copy
                       ${TextureFile} $<TARGET_FILE_DIR:shadow_effect>)
endforeach()
