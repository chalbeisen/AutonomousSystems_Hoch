# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "turtlesim_halbeisen: 1 messages, 2 services")

set(MSG_I_FLAGS "-Iturtlesim_halbeisen:/home/chalbeisen/catkin_ws/src/turtlesim_halbeisen/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Iturtlesim:/opt/ros/noetic/share/turtlesim/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(turtlesim_halbeisen_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/chalbeisen/catkin_ws/src/turtlesim_halbeisen/msg/TurtlesimState.msg" NAME_WE)
add_custom_target(_turtlesim_halbeisen_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlesim_halbeisen" "/home/chalbeisen/catkin_ws/src/turtlesim_halbeisen/msg/TurtlesimState.msg" "geometry_msgs/Twist:geometry_msgs/Vector3:turtlesim/Color:turtlesim/Pose"
)

get_filename_component(_filename "/home/chalbeisen/catkin_ws/src/turtlesim_halbeisen/srv/LogTimeout.srv" NAME_WE)
add_custom_target(_turtlesim_halbeisen_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlesim_halbeisen" "/home/chalbeisen/catkin_ws/src/turtlesim_halbeisen/srv/LogTimeout.srv" ""
)

get_filename_component(_filename "/home/chalbeisen/catkin_ws/src/turtlesim_halbeisen/srv/StopControl.srv" NAME_WE)
add_custom_target(_turtlesim_halbeisen_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlesim_halbeisen" "/home/chalbeisen/catkin_ws/src/turtlesim_halbeisen/srv/StopControl.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(turtlesim_halbeisen
  "/home/chalbeisen/catkin_ws/src/turtlesim_halbeisen/msg/TurtlesimState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/turtlesim/cmake/../msg/Color.msg;/opt/ros/noetic/share/turtlesim/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlesim_halbeisen
)

### Generating Services
_generate_srv_cpp(turtlesim_halbeisen
  "/home/chalbeisen/catkin_ws/src/turtlesim_halbeisen/srv/LogTimeout.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlesim_halbeisen
)
_generate_srv_cpp(turtlesim_halbeisen
  "/home/chalbeisen/catkin_ws/src/turtlesim_halbeisen/srv/StopControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlesim_halbeisen
)

### Generating Module File
_generate_module_cpp(turtlesim_halbeisen
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlesim_halbeisen
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(turtlesim_halbeisen_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(turtlesim_halbeisen_generate_messages turtlesim_halbeisen_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chalbeisen/catkin_ws/src/turtlesim_halbeisen/msg/TurtlesimState.msg" NAME_WE)
add_dependencies(turtlesim_halbeisen_generate_messages_cpp _turtlesim_halbeisen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalbeisen/catkin_ws/src/turtlesim_halbeisen/srv/LogTimeout.srv" NAME_WE)
add_dependencies(turtlesim_halbeisen_generate_messages_cpp _turtlesim_halbeisen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalbeisen/catkin_ws/src/turtlesim_halbeisen/srv/StopControl.srv" NAME_WE)
add_dependencies(turtlesim_halbeisen_generate_messages_cpp _turtlesim_halbeisen_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlesim_halbeisen_gencpp)
add_dependencies(turtlesim_halbeisen_gencpp turtlesim_halbeisen_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlesim_halbeisen_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(turtlesim_halbeisen
  "/home/chalbeisen/catkin_ws/src/turtlesim_halbeisen/msg/TurtlesimState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/turtlesim/cmake/../msg/Color.msg;/opt/ros/noetic/share/turtlesim/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlesim_halbeisen
)

### Generating Services
_generate_srv_eus(turtlesim_halbeisen
  "/home/chalbeisen/catkin_ws/src/turtlesim_halbeisen/srv/LogTimeout.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlesim_halbeisen
)
_generate_srv_eus(turtlesim_halbeisen
  "/home/chalbeisen/catkin_ws/src/turtlesim_halbeisen/srv/StopControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlesim_halbeisen
)

### Generating Module File
_generate_module_eus(turtlesim_halbeisen
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlesim_halbeisen
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(turtlesim_halbeisen_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(turtlesim_halbeisen_generate_messages turtlesim_halbeisen_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chalbeisen/catkin_ws/src/turtlesim_halbeisen/msg/TurtlesimState.msg" NAME_WE)
add_dependencies(turtlesim_halbeisen_generate_messages_eus _turtlesim_halbeisen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalbeisen/catkin_ws/src/turtlesim_halbeisen/srv/LogTimeout.srv" NAME_WE)
add_dependencies(turtlesim_halbeisen_generate_messages_eus _turtlesim_halbeisen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalbeisen/catkin_ws/src/turtlesim_halbeisen/srv/StopControl.srv" NAME_WE)
add_dependencies(turtlesim_halbeisen_generate_messages_eus _turtlesim_halbeisen_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlesim_halbeisen_geneus)
add_dependencies(turtlesim_halbeisen_geneus turtlesim_halbeisen_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlesim_halbeisen_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(turtlesim_halbeisen
  "/home/chalbeisen/catkin_ws/src/turtlesim_halbeisen/msg/TurtlesimState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/turtlesim/cmake/../msg/Color.msg;/opt/ros/noetic/share/turtlesim/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlesim_halbeisen
)

### Generating Services
_generate_srv_lisp(turtlesim_halbeisen
  "/home/chalbeisen/catkin_ws/src/turtlesim_halbeisen/srv/LogTimeout.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlesim_halbeisen
)
_generate_srv_lisp(turtlesim_halbeisen
  "/home/chalbeisen/catkin_ws/src/turtlesim_halbeisen/srv/StopControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlesim_halbeisen
)

### Generating Module File
_generate_module_lisp(turtlesim_halbeisen
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlesim_halbeisen
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(turtlesim_halbeisen_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(turtlesim_halbeisen_generate_messages turtlesim_halbeisen_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chalbeisen/catkin_ws/src/turtlesim_halbeisen/msg/TurtlesimState.msg" NAME_WE)
add_dependencies(turtlesim_halbeisen_generate_messages_lisp _turtlesim_halbeisen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalbeisen/catkin_ws/src/turtlesim_halbeisen/srv/LogTimeout.srv" NAME_WE)
add_dependencies(turtlesim_halbeisen_generate_messages_lisp _turtlesim_halbeisen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalbeisen/catkin_ws/src/turtlesim_halbeisen/srv/StopControl.srv" NAME_WE)
add_dependencies(turtlesim_halbeisen_generate_messages_lisp _turtlesim_halbeisen_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlesim_halbeisen_genlisp)
add_dependencies(turtlesim_halbeisen_genlisp turtlesim_halbeisen_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlesim_halbeisen_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(turtlesim_halbeisen
  "/home/chalbeisen/catkin_ws/src/turtlesim_halbeisen/msg/TurtlesimState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/turtlesim/cmake/../msg/Color.msg;/opt/ros/noetic/share/turtlesim/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlesim_halbeisen
)

### Generating Services
_generate_srv_nodejs(turtlesim_halbeisen
  "/home/chalbeisen/catkin_ws/src/turtlesim_halbeisen/srv/LogTimeout.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlesim_halbeisen
)
_generate_srv_nodejs(turtlesim_halbeisen
  "/home/chalbeisen/catkin_ws/src/turtlesim_halbeisen/srv/StopControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlesim_halbeisen
)

### Generating Module File
_generate_module_nodejs(turtlesim_halbeisen
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlesim_halbeisen
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(turtlesim_halbeisen_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(turtlesim_halbeisen_generate_messages turtlesim_halbeisen_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chalbeisen/catkin_ws/src/turtlesim_halbeisen/msg/TurtlesimState.msg" NAME_WE)
add_dependencies(turtlesim_halbeisen_generate_messages_nodejs _turtlesim_halbeisen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalbeisen/catkin_ws/src/turtlesim_halbeisen/srv/LogTimeout.srv" NAME_WE)
add_dependencies(turtlesim_halbeisen_generate_messages_nodejs _turtlesim_halbeisen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalbeisen/catkin_ws/src/turtlesim_halbeisen/srv/StopControl.srv" NAME_WE)
add_dependencies(turtlesim_halbeisen_generate_messages_nodejs _turtlesim_halbeisen_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlesim_halbeisen_gennodejs)
add_dependencies(turtlesim_halbeisen_gennodejs turtlesim_halbeisen_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlesim_halbeisen_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(turtlesim_halbeisen
  "/home/chalbeisen/catkin_ws/src/turtlesim_halbeisen/msg/TurtlesimState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/turtlesim/cmake/../msg/Color.msg;/opt/ros/noetic/share/turtlesim/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlesim_halbeisen
)

### Generating Services
_generate_srv_py(turtlesim_halbeisen
  "/home/chalbeisen/catkin_ws/src/turtlesim_halbeisen/srv/LogTimeout.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlesim_halbeisen
)
_generate_srv_py(turtlesim_halbeisen
  "/home/chalbeisen/catkin_ws/src/turtlesim_halbeisen/srv/StopControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlesim_halbeisen
)

### Generating Module File
_generate_module_py(turtlesim_halbeisen
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlesim_halbeisen
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(turtlesim_halbeisen_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(turtlesim_halbeisen_generate_messages turtlesim_halbeisen_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chalbeisen/catkin_ws/src/turtlesim_halbeisen/msg/TurtlesimState.msg" NAME_WE)
add_dependencies(turtlesim_halbeisen_generate_messages_py _turtlesim_halbeisen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalbeisen/catkin_ws/src/turtlesim_halbeisen/srv/LogTimeout.srv" NAME_WE)
add_dependencies(turtlesim_halbeisen_generate_messages_py _turtlesim_halbeisen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalbeisen/catkin_ws/src/turtlesim_halbeisen/srv/StopControl.srv" NAME_WE)
add_dependencies(turtlesim_halbeisen_generate_messages_py _turtlesim_halbeisen_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlesim_halbeisen_genpy)
add_dependencies(turtlesim_halbeisen_genpy turtlesim_halbeisen_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlesim_halbeisen_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlesim_halbeisen)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlesim_halbeisen
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(turtlesim_halbeisen_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(turtlesim_halbeisen_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET turtlesim_generate_messages_cpp)
  add_dependencies(turtlesim_halbeisen_generate_messages_cpp turtlesim_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlesim_halbeisen)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlesim_halbeisen
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(turtlesim_halbeisen_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(turtlesim_halbeisen_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET turtlesim_generate_messages_eus)
  add_dependencies(turtlesim_halbeisen_generate_messages_eus turtlesim_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlesim_halbeisen)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlesim_halbeisen
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(turtlesim_halbeisen_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(turtlesim_halbeisen_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET turtlesim_generate_messages_lisp)
  add_dependencies(turtlesim_halbeisen_generate_messages_lisp turtlesim_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlesim_halbeisen)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlesim_halbeisen
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(turtlesim_halbeisen_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(turtlesim_halbeisen_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET turtlesim_generate_messages_nodejs)
  add_dependencies(turtlesim_halbeisen_generate_messages_nodejs turtlesim_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlesim_halbeisen)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlesim_halbeisen\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlesim_halbeisen
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(turtlesim_halbeisen_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(turtlesim_halbeisen_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET turtlesim_generate_messages_py)
  add_dependencies(turtlesim_halbeisen_generate_messages_py turtlesim_generate_messages_py)
endif()
