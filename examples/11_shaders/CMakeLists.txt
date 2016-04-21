SET(TARGET_SRC shaders.cpp )
#### end var setup  ###
SETUP_EXAMPLE(shaders)

set(TextureFiles
    ${CMAKE_CURRENT_SOURCE_DIR}/Fieldstone.jpg
	${CMAKE_CURRENT_SOURCE_DIR}/foo.jpg
    )

foreach(TextureFile ${TextureFiles})
    add_custom_command(TARGET shaders PRE_BUILD
                       COMMAND ${CMAKE_COMMAND} -E copy
                       ${TextureFile} $<TARGET_FILE_DIR:shaders>)
endforeach()
	
add_custom_command(TARGET shaders PRE_BUILD
                   COMMAND ${CMAKE_COMMAND} -E copy_directory
                   ${CMAKE_CURRENT_SOURCE_DIR}/shaders	$<TARGET_FILE_DIR:shaders>/shaders)
