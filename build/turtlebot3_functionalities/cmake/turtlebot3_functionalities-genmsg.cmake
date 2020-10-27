# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "turtlebot3_functionalities: 1 messages, 1 services")

set(MSG_I_FLAGS "-Iturtlebot3_functionalities:/home/sksuricata/catkin_ws/src/turtlebot3_functionalities/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(turtlebot3_functionalities_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sksuricata/catkin_ws/src/turtlebot3_functionalities/msg/switchState.msg" NAME_WE)
add_custom_target(_turtlebot3_functionalities_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot3_functionalities" "/home/sksuricata/catkin_ws/src/turtlebot3_functionalities/msg/switchState.msg" ""
)

get_filename_component(_filename "/home/sksuricata/catkin_ws/src/turtlebot3_functionalities/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_turtlebot3_functionalities_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot3_functionalities" "/home/sksuricata/catkin_ws/src/turtlebot3_functionalities/srv/AddTwoInts.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(turtlebot3_functionalities
  "/home/sksuricata/catkin_ws/src/turtlebot3_functionalities/msg/switchState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot3_functionalities
)

### Generating Services
_generate_srv_cpp(turtlebot3_functionalities
  "/home/sksuricata/catkin_ws/src/turtlebot3_functionalities/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot3_functionalities
)

### Generating Module File
_generate_module_cpp(turtlebot3_functionalities
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot3_functionalities
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(turtlebot3_functionalities_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(turtlebot3_functionalities_generate_messages turtlebot3_functionalities_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sksuricata/catkin_ws/src/turtlebot3_functionalities/msg/switchState.msg" NAME_WE)
add_dependencies(turtlebot3_functionalities_generate_messages_cpp _turtlebot3_functionalities_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sksuricata/catkin_ws/src/turtlebot3_functionalities/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(turtlebot3_functionalities_generate_messages_cpp _turtlebot3_functionalities_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlebot3_functionalities_gencpp)
add_dependencies(turtlebot3_functionalities_gencpp turtlebot3_functionalities_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlebot3_functionalities_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(turtlebot3_functionalities
  "/home/sksuricata/catkin_ws/src/turtlebot3_functionalities/msg/switchState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot3_functionalities
)

### Generating Services
_generate_srv_eus(turtlebot3_functionalities
  "/home/sksuricata/catkin_ws/src/turtlebot3_functionalities/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot3_functionalities
)

### Generating Module File
_generate_module_eus(turtlebot3_functionalities
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot3_functionalities
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(turtlebot3_functionalities_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(turtlebot3_functionalities_generate_messages turtlebot3_functionalities_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sksuricata/catkin_ws/src/turtlebot3_functionalities/msg/switchState.msg" NAME_WE)
add_dependencies(turtlebot3_functionalities_generate_messages_eus _turtlebot3_functionalities_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sksuricata/catkin_ws/src/turtlebot3_functionalities/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(turtlebot3_functionalities_generate_messages_eus _turtlebot3_functionalities_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlebot3_functionalities_geneus)
add_dependencies(turtlebot3_functionalities_geneus turtlebot3_functionalities_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlebot3_functionalities_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(turtlebot3_functionalities
  "/home/sksuricata/catkin_ws/src/turtlebot3_functionalities/msg/switchState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot3_functionalities
)

### Generating Services
_generate_srv_lisp(turtlebot3_functionalities
  "/home/sksuricata/catkin_ws/src/turtlebot3_functionalities/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot3_functionalities
)

### Generating Module File
_generate_module_lisp(turtlebot3_functionalities
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot3_functionalities
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(turtlebot3_functionalities_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(turtlebot3_functionalities_generate_messages turtlebot3_functionalities_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sksuricata/catkin_ws/src/turtlebot3_functionalities/msg/switchState.msg" NAME_WE)
add_dependencies(turtlebot3_functionalities_generate_messages_lisp _turtlebot3_functionalities_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sksuricata/catkin_ws/src/turtlebot3_functionalities/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(turtlebot3_functionalities_generate_messages_lisp _turtlebot3_functionalities_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlebot3_functionalities_genlisp)
add_dependencies(turtlebot3_functionalities_genlisp turtlebot3_functionalities_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlebot3_functionalities_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(turtlebot3_functionalities
  "/home/sksuricata/catkin_ws/src/turtlebot3_functionalities/msg/switchState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot3_functionalities
)

### Generating Services
_generate_srv_nodejs(turtlebot3_functionalities
  "/home/sksuricata/catkin_ws/src/turtlebot3_functionalities/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot3_functionalities
)

### Generating Module File
_generate_module_nodejs(turtlebot3_functionalities
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot3_functionalities
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(turtlebot3_functionalities_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(turtlebot3_functionalities_generate_messages turtlebot3_functionalities_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sksuricata/catkin_ws/src/turtlebot3_functionalities/msg/switchState.msg" NAME_WE)
add_dependencies(turtlebot3_functionalities_generate_messages_nodejs _turtlebot3_functionalities_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sksuricata/catkin_ws/src/turtlebot3_functionalities/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(turtlebot3_functionalities_generate_messages_nodejs _turtlebot3_functionalities_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlebot3_functionalities_gennodejs)
add_dependencies(turtlebot3_functionalities_gennodejs turtlebot3_functionalities_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlebot3_functionalities_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(turtlebot3_functionalities
  "/home/sksuricata/catkin_ws/src/turtlebot3_functionalities/msg/switchState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot3_functionalities
)

### Generating Services
_generate_srv_py(turtlebot3_functionalities
  "/home/sksuricata/catkin_ws/src/turtlebot3_functionalities/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot3_functionalities
)

### Generating Module File
_generate_module_py(turtlebot3_functionalities
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot3_functionalities
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(turtlebot3_functionalities_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(turtlebot3_functionalities_generate_messages turtlebot3_functionalities_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sksuricata/catkin_ws/src/turtlebot3_functionalities/msg/switchState.msg" NAME_WE)
add_dependencies(turtlebot3_functionalities_generate_messages_py _turtlebot3_functionalities_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sksuricata/catkin_ws/src/turtlebot3_functionalities/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(turtlebot3_functionalities_generate_messages_py _turtlebot3_functionalities_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlebot3_functionalities_genpy)
add_dependencies(turtlebot3_functionalities_genpy turtlebot3_functionalities_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlebot3_functionalities_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot3_functionalities)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot3_functionalities
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(turtlebot3_functionalities_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot3_functionalities)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot3_functionalities
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(turtlebot3_functionalities_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot3_functionalities)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot3_functionalities
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(turtlebot3_functionalities_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot3_functionalities)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot3_functionalities
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(turtlebot3_functionalities_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot3_functionalities)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot3_functionalities\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot3_functionalities
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(turtlebot3_functionalities_generate_messages_py std_msgs_generate_messages_py)
endif()
