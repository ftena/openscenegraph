SET(TARGET_SRC texturing_and_positioning.cpp )
#### end var setup  ###
SETUP_EXAMPLE(texturing_and_positioning)

set(TextureFiles
    ${CMAKE_CURRENT_SOURCE_DIR}/Terrain2.3ds
    ${CMAKE_CURRENT_SOURCE_DIR}/Terrain3.tga
    ${CMAKE_CURRENT_SOURCE_DIR}/window04smash.bmp
    ${CMAKE_CURRENT_SOURCE_DIR}/wood.png
    )

foreach(TextureFile ${TextureFiles})
    add_custom_command(TARGET texturing_and_positioning PRE_BUILD
                       COMMAND ${CMAKE_COMMAND} -E copy
                       ${TextureFile} $<TARGET_FILE_DIR:texturing_and_positioning>)
endforeach()
