SET( TARGET_SRC shading.cpp )
#### end var setup  ###
SETUP_EXAMPLE(shading)

set(TextureFiles
	${CMAKE_CURRENT_SOURCE_DIR}/"Cell 23.rgb"
    ${CMAKE_CURRENT_SOURCE_DIR}/"Cell 23.rgb.attr"
    ${CMAKE_CURRENT_SOURCE_DIR}/Fieldstone.png
	${CMAKE_CURRENT_SOURCE_DIR}/JoeDirt.flt	
    ${CMAKE_CURRENT_SOURCE_DIR}/window04smash.bmp
    )

foreach(TextureFile ${TextureFiles})
    add_custom_command(TARGET shading PRE_BUILD
                       COMMAND ${CMAKE_COMMAND} -E copy
                       ${TextureFile} $<TARGET_FILE_DIR:shading>)
endforeach()
