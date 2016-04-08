SET(TARGET_SRC fogging_effect.cpp )
#### end var setup  ###
SETUP_EXAMPLE(fogging_effect)

set(TextureFiles
    ${CMAKE_CURRENT_SOURCE_DIR}/Fieldstone.png
	${CMAKE_CURRENT_SOURCE_DIR}/Terrain2.3ds
    ${CMAKE_CURRENT_SOURCE_DIR}/Terrain3.tga
    ${CMAKE_CURRENT_SOURCE_DIR}/window04smash.bmp
    )

foreach(TextureFile ${TextureFiles})
    add_custom_command(TARGET fogging_effect PRE_BUILD
                       COMMAND ${CMAKE_COMMAND} -E copy
                       ${TextureFile} $<TARGET_FILE_DIR:fogging_effect>)
endforeach()
