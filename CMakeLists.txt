cmake_minimum_required(VERSION 3.10)

project(tgp
	VERSION 0.1
	DESCRIPTION "The Gateway Project"
)

add_subdirectory(../varserver ${CMAKE_BINARY_DIR}/varserver)
add_subdirectory(../varcreate ${CMAKE_BINARY_DIR}/varcreate)
add_subdirectory(../libtjson ${CMAKE_BINARY_DIR}/libtjson)
add_subdirectory(../execvars ${CMAKE_BINARY_DIR}/execvars)
add_subdirectory(../filevars ${CMAKE_BINARY_DIR}/filevars)
add_subdirectory(../libvaraction ${CMAKE_BINARY_DIR}/libvaraction)
add_subdirectory(../actions ${CMAKE_BINARY_DIR}/actions)
add_subdirectory(../statemachine ${CMAKE_BINARY_DIR}/statemachine)
add_subdirectory(../loadconfig ${CMAKE_BINARY_DIR}/loadconfig)
add_subdirectory(../savesvc ${CMAKE_BINARY_DIR}/savesvc)
add_subdirectory(../libtjwt ${CMAKE_BINARY_DIR}/libtjwt)
add_subdirectory(../sessionmgr ${CMAKE_BINARY_DIR}/sessionmgr)
add_subdirectory(../fcgi_auth ${CMAKE_BINARY_DIR}/fcgi_auth)
add_subdirectory(../fcgi_vars ${CMAKE_BINARY_DIR}/fcgi_vars)
add_subdirectory(../fcgi_proc ${CMAKE_BINARY_DIR}/fcgi_proc)
add_subdirectory(../fcgi_test ${CMAKE_BINARY_DIR}/fcgi_test)
add_subdirectory(../mqttvars ${CMAKE_BINARY_DIR}/mqttvars)
add_subdirectory(../libluavars ${CMAKE_BINARY_DIR}/libluavars)
add_subdirectory(../procmon ${CMAKE_BINARY_DIR}/procmon)
add_subdirectory(../libiotclient ${CMAKE_BINARY_DIR}/libiotclient)
add_subdirectory(../iothub ${CMAKE_BINARY_DIR}/iothub)
add_subdirectory(../iotsend ${CMAKE_BINARY_DIR}/iotsend)
add_subdirectory(../templatesvc ${CMAKE_BINARY_DIR}/templatesvc)
add_subdirectory(../varmsg ${CMAKE_BINARY_DIR}/varmsg)
add_subdirectory(../udpt ${CMAKE_BINARY_DIR}/udpt)
add_subdirectory(../manifest ${CMAKE_BINARY_DIR}/manifest)

add_subdirectory(../neurio ${CMAKE_BINARY_DIR}/neurio)
add_subdirectory(../gpioctrl ${CMAKE_BINARY_DIR}/gpioctrl)
add_subdirectory(../ads7830 ${CMAKE_BINARY_DIR}/ads7830)
add_subdirectory(../lcd1602 ${CMAKE_BINARY_DIR}/lcd1602)

