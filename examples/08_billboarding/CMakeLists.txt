SET(TARGET_SRC billboarding.cpp )
#### end var setup  ###
SETUP_EXAMPLE(billboarding)

set(TextureFiles
	${CMAKE_CURRENT_SOURCE_DIR}/"Cell 23.rgb"
    ${CMAKE_CURRENT_SOURCE_DIR}/"Cell 23.rgb.attr"
    ${CMAKE_CURRENT_SOURCE_DIR}/Fieldstone.png
	${CMAKE_CURRENT_SOURCE_DIR}/JoeDirt.flt    
    ${CMAKE_CURRENT_SOURCE_DIR}/foo.png
    )

foreach(TextureFile ${TextureFiles})
    add_custom_command(TARGET billboarding PRE_BUILD
                       COMMAND ${CMAKE_COMMAND} -E copy
                       ${TextureFile} $<TARGET_FILE_DIR:billboarding>)
endforeach()
