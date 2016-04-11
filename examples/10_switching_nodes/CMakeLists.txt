SET(TARGET_SRC switching_nodes.cpp )
#### end var setup  ###
SETUP_EXAMPLE(switching_nodes)

set(TextureFiles
    ${CMAKE_CURRENT_SOURCE_DIR}/Fieldstone.jpg
	${CMAKE_CURRENT_SOURCE_DIR}/Oyanirami0.3ds
	${CMAKE_CURRENT_SOURCE_DIR}/OyanirT.bmp
	${CMAKE_CURRENT_SOURCE_DIR}/terrain.jpg
	${CMAKE_CURRENT_SOURCE_DIR}/wood.png
    )

foreach(TextureFile ${TextureFiles})
    add_custom_command(TARGET switching_nodes PRE_BUILD
                       COMMAND ${CMAKE_COMMAND} -E copy
                       ${TextureFile} $<TARGET_FILE_DIR:switching_nodes>)
endforeach()
