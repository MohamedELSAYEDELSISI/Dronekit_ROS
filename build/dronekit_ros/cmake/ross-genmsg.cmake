# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ross: 1 messages, 5 services")

set(MSG_I_FLAGS "-Iross:/home/drone/m/src/dronekit_ros/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ross_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/drone/m/src/dronekit_ros/msg/vehicle_status.msg" NAME_WE)
add_custom_target(_ross_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ross" "/home/drone/m/src/dronekit_ros/msg/vehicle_status.msg" "std_msgs/String"
)

get_filename_component(_filename "/home/drone/m/src/dronekit_ros/srv/pose_service.srv" NAME_WE)
add_custom_target(_ross_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ross" "/home/drone/m/src/dronekit_ros/srv/pose_service.srv" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/drone/m/src/dronekit_ros/srv/confg_mode.srv" NAME_WE)
add_custom_target(_ross_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ross" "/home/drone/m/src/dronekit_ros/srv/confg_mode.srv" ""
)

get_filename_component(_filename "/home/drone/m/src/dronekit_ros/srv/land.srv" NAME_WE)
add_custom_target(_ross_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ross" "/home/drone/m/src/dronekit_ros/srv/land.srv" ""
)

get_filename_component(_filename "/home/drone/m/src/dronekit_ros/srv/takeoff.srv" NAME_WE)
add_custom_target(_ross_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ross" "/home/drone/m/src/dronekit_ros/srv/takeoff.srv" ""
)

get_filename_component(_filename "/home/drone/m/src/dronekit_ros/srv/RTL.srv" NAME_WE)
add_custom_target(_ross_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ross" "/home/drone/m/src/dronekit_ros/srv/RTL.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ross
  "/home/drone/m/src/dronekit_ros/msg/vehicle_status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ross
)

### Generating Services
_generate_srv_cpp(ross
  "/home/drone/m/src/dronekit_ros/srv/pose_service.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ross
)
_generate_srv_cpp(ross
  "/home/drone/m/src/dronekit_ros/srv/confg_mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ross
)
_generate_srv_cpp(ross
  "/home/drone/m/src/dronekit_ros/srv/land.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ross
)
_generate_srv_cpp(ross
  "/home/drone/m/src/dronekit_ros/srv/takeoff.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ross
)
_generate_srv_cpp(ross
  "/home/drone/m/src/dronekit_ros/srv/RTL.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ross
)

### Generating Module File
_generate_module_cpp(ross
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ross
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ross_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ross_generate_messages ross_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/drone/m/src/dronekit_ros/msg/vehicle_status.msg" NAME_WE)
add_dependencies(ross_generate_messages_cpp _ross_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drone/m/src/dronekit_ros/srv/pose_service.srv" NAME_WE)
add_dependencies(ross_generate_messages_cpp _ross_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drone/m/src/dronekit_ros/srv/confg_mode.srv" NAME_WE)
add_dependencies(ross_generate_messages_cpp _ross_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drone/m/src/dronekit_ros/srv/land.srv" NAME_WE)
add_dependencies(ross_generate_messages_cpp _ross_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drone/m/src/dronekit_ros/srv/takeoff.srv" NAME_WE)
add_dependencies(ross_generate_messages_cpp _ross_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drone/m/src/dronekit_ros/srv/RTL.srv" NAME_WE)
add_dependencies(ross_generate_messages_cpp _ross_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ross_gencpp)
add_dependencies(ross_gencpp ross_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ross_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ross
  "/home/drone/m/src/dronekit_ros/msg/vehicle_status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ross
)

### Generating Services
_generate_srv_eus(ross
  "/home/drone/m/src/dronekit_ros/srv/pose_service.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ross
)
_generate_srv_eus(ross
  "/home/drone/m/src/dronekit_ros/srv/confg_mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ross
)
_generate_srv_eus(ross
  "/home/drone/m/src/dronekit_ros/srv/land.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ross
)
_generate_srv_eus(ross
  "/home/drone/m/src/dronekit_ros/srv/takeoff.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ross
)
_generate_srv_eus(ross
  "/home/drone/m/src/dronekit_ros/srv/RTL.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ross
)

### Generating Module File
_generate_module_eus(ross
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ross
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ross_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ross_generate_messages ross_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/drone/m/src/dronekit_ros/msg/vehicle_status.msg" NAME_WE)
add_dependencies(ross_generate_messages_eus _ross_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drone/m/src/dronekit_ros/srv/pose_service.srv" NAME_WE)
add_dependencies(ross_generate_messages_eus _ross_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drone/m/src/dronekit_ros/srv/confg_mode.srv" NAME_WE)
add_dependencies(ross_generate_messages_eus _ross_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drone/m/src/dronekit_ros/srv/land.srv" NAME_WE)
add_dependencies(ross_generate_messages_eus _ross_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drone/m/src/dronekit_ros/srv/takeoff.srv" NAME_WE)
add_dependencies(ross_generate_messages_eus _ross_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drone/m/src/dronekit_ros/srv/RTL.srv" NAME_WE)
add_dependencies(ross_generate_messages_eus _ross_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ross_geneus)
add_dependencies(ross_geneus ross_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ross_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ross
  "/home/drone/m/src/dronekit_ros/msg/vehicle_status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ross
)

### Generating Services
_generate_srv_lisp(ross
  "/home/drone/m/src/dronekit_ros/srv/pose_service.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ross
)
_generate_srv_lisp(ross
  "/home/drone/m/src/dronekit_ros/srv/confg_mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ross
)
_generate_srv_lisp(ross
  "/home/drone/m/src/dronekit_ros/srv/land.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ross
)
_generate_srv_lisp(ross
  "/home/drone/m/src/dronekit_ros/srv/takeoff.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ross
)
_generate_srv_lisp(ross
  "/home/drone/m/src/dronekit_ros/srv/RTL.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ross
)

### Generating Module File
_generate_module_lisp(ross
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ross
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ross_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ross_generate_messages ross_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/drone/m/src/dronekit_ros/msg/vehicle_status.msg" NAME_WE)
add_dependencies(ross_generate_messages_lisp _ross_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drone/m/src/dronekit_ros/srv/pose_service.srv" NAME_WE)
add_dependencies(ross_generate_messages_lisp _ross_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drone/m/src/dronekit_ros/srv/confg_mode.srv" NAME_WE)
add_dependencies(ross_generate_messages_lisp _ross_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drone/m/src/dronekit_ros/srv/land.srv" NAME_WE)
add_dependencies(ross_generate_messages_lisp _ross_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drone/m/src/dronekit_ros/srv/takeoff.srv" NAME_WE)
add_dependencies(ross_generate_messages_lisp _ross_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drone/m/src/dronekit_ros/srv/RTL.srv" NAME_WE)
add_dependencies(ross_generate_messages_lisp _ross_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ross_genlisp)
add_dependencies(ross_genlisp ross_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ross_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ross
  "/home/drone/m/src/dronekit_ros/msg/vehicle_status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ross
)

### Generating Services
_generate_srv_nodejs(ross
  "/home/drone/m/src/dronekit_ros/srv/pose_service.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ross
)
_generate_srv_nodejs(ross
  "/home/drone/m/src/dronekit_ros/srv/confg_mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ross
)
_generate_srv_nodejs(ross
  "/home/drone/m/src/dronekit_ros/srv/land.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ross
)
_generate_srv_nodejs(ross
  "/home/drone/m/src/dronekit_ros/srv/takeoff.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ross
)
_generate_srv_nodejs(ross
  "/home/drone/m/src/dronekit_ros/srv/RTL.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ross
)

### Generating Module File
_generate_module_nodejs(ross
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ross
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ross_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ross_generate_messages ross_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/drone/m/src/dronekit_ros/msg/vehicle_status.msg" NAME_WE)
add_dependencies(ross_generate_messages_nodejs _ross_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drone/m/src/dronekit_ros/srv/pose_service.srv" NAME_WE)
add_dependencies(ross_generate_messages_nodejs _ross_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drone/m/src/dronekit_ros/srv/confg_mode.srv" NAME_WE)
add_dependencies(ross_generate_messages_nodejs _ross_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drone/m/src/dronekit_ros/srv/land.srv" NAME_WE)
add_dependencies(ross_generate_messages_nodejs _ross_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drone/m/src/dronekit_ros/srv/takeoff.srv" NAME_WE)
add_dependencies(ross_generate_messages_nodejs _ross_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drone/m/src/dronekit_ros/srv/RTL.srv" NAME_WE)
add_dependencies(ross_generate_messages_nodejs _ross_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ross_gennodejs)
add_dependencies(ross_gennodejs ross_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ross_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ross
  "/home/drone/m/src/dronekit_ros/msg/vehicle_status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ross
)

### Generating Services
_generate_srv_py(ross
  "/home/drone/m/src/dronekit_ros/srv/pose_service.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ross
)
_generate_srv_py(ross
  "/home/drone/m/src/dronekit_ros/srv/confg_mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ross
)
_generate_srv_py(ross
  "/home/drone/m/src/dronekit_ros/srv/land.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ross
)
_generate_srv_py(ross
  "/home/drone/m/src/dronekit_ros/srv/takeoff.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ross
)
_generate_srv_py(ross
  "/home/drone/m/src/dronekit_ros/srv/RTL.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ross
)

### Generating Module File
_generate_module_py(ross
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ross
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ross_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ross_generate_messages ross_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/drone/m/src/dronekit_ros/msg/vehicle_status.msg" NAME_WE)
add_dependencies(ross_generate_messages_py _ross_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drone/m/src/dronekit_ros/srv/pose_service.srv" NAME_WE)
add_dependencies(ross_generate_messages_py _ross_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drone/m/src/dronekit_ros/srv/confg_mode.srv" NAME_WE)
add_dependencies(ross_generate_messages_py _ross_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drone/m/src/dronekit_ros/srv/land.srv" NAME_WE)
add_dependencies(ross_generate_messages_py _ross_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drone/m/src/dronekit_ros/srv/takeoff.srv" NAME_WE)
add_dependencies(ross_generate_messages_py _ross_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/drone/m/src/dronekit_ros/srv/RTL.srv" NAME_WE)
add_dependencies(ross_generate_messages_py _ross_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ross_genpy)
add_dependencies(ross_genpy ross_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ross_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ross)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ross
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ross_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(ross_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ross)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ross
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ross_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(ross_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ross)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ross
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ross_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(ross_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ross)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ross
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ross_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(ross_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ross)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ross\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ross
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ross_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(ross_generate_messages_py geometry_msgs_generate_messages_py)
endif()
