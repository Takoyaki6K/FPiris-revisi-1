# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "Kamera: 1 messages, 1 services")

set(MSG_I_FLAGS "-IKamera:/home/raihanramadan/catkin_ws/src/beginner_tutorials/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(Kamera_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/raihanramadan/catkin_ws/src/beginner_tutorials/msg/Num.msg" NAME_WE)
add_custom_target(_Kamera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "Kamera" "/home/raihanramadan/catkin_ws/src/beginner_tutorials/msg/Num.msg" ""
)

get_filename_component(_filename "/home/raihanramadan/catkin_ws/src/beginner_tutorials/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_Kamera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "Kamera" "/home/raihanramadan/catkin_ws/src/beginner_tutorials/srv/AddTwoInts.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(Kamera
  "/home/raihanramadan/catkin_ws/src/beginner_tutorials/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Kamera
)

### Generating Services
_generate_srv_cpp(Kamera
  "/home/raihanramadan/catkin_ws/src/beginner_tutorials/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Kamera
)

### Generating Module File
_generate_module_cpp(Kamera
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Kamera
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(Kamera_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(Kamera_generate_messages Kamera_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/raihanramadan/catkin_ws/src/beginner_tutorials/msg/Num.msg" NAME_WE)
add_dependencies(Kamera_generate_messages_cpp _Kamera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raihanramadan/catkin_ws/src/beginner_tutorials/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(Kamera_generate_messages_cpp _Kamera_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Kamera_gencpp)
add_dependencies(Kamera_gencpp Kamera_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Kamera_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(Kamera
  "/home/raihanramadan/catkin_ws/src/beginner_tutorials/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Kamera
)

### Generating Services
_generate_srv_eus(Kamera
  "/home/raihanramadan/catkin_ws/src/beginner_tutorials/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Kamera
)

### Generating Module File
_generate_module_eus(Kamera
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Kamera
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(Kamera_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(Kamera_generate_messages Kamera_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/raihanramadan/catkin_ws/src/beginner_tutorials/msg/Num.msg" NAME_WE)
add_dependencies(Kamera_generate_messages_eus _Kamera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raihanramadan/catkin_ws/src/beginner_tutorials/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(Kamera_generate_messages_eus _Kamera_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Kamera_geneus)
add_dependencies(Kamera_geneus Kamera_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Kamera_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(Kamera
  "/home/raihanramadan/catkin_ws/src/beginner_tutorials/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Kamera
)

### Generating Services
_generate_srv_lisp(Kamera
  "/home/raihanramadan/catkin_ws/src/beginner_tutorials/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Kamera
)

### Generating Module File
_generate_module_lisp(Kamera
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Kamera
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(Kamera_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(Kamera_generate_messages Kamera_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/raihanramadan/catkin_ws/src/beginner_tutorials/msg/Num.msg" NAME_WE)
add_dependencies(Kamera_generate_messages_lisp _Kamera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raihanramadan/catkin_ws/src/beginner_tutorials/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(Kamera_generate_messages_lisp _Kamera_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Kamera_genlisp)
add_dependencies(Kamera_genlisp Kamera_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Kamera_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(Kamera
  "/home/raihanramadan/catkin_ws/src/beginner_tutorials/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Kamera
)

### Generating Services
_generate_srv_nodejs(Kamera
  "/home/raihanramadan/catkin_ws/src/beginner_tutorials/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Kamera
)

### Generating Module File
_generate_module_nodejs(Kamera
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Kamera
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(Kamera_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(Kamera_generate_messages Kamera_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/raihanramadan/catkin_ws/src/beginner_tutorials/msg/Num.msg" NAME_WE)
add_dependencies(Kamera_generate_messages_nodejs _Kamera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raihanramadan/catkin_ws/src/beginner_tutorials/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(Kamera_generate_messages_nodejs _Kamera_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Kamera_gennodejs)
add_dependencies(Kamera_gennodejs Kamera_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Kamera_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(Kamera
  "/home/raihanramadan/catkin_ws/src/beginner_tutorials/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Kamera
)

### Generating Services
_generate_srv_py(Kamera
  "/home/raihanramadan/catkin_ws/src/beginner_tutorials/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Kamera
)

### Generating Module File
_generate_module_py(Kamera
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Kamera
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(Kamera_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(Kamera_generate_messages Kamera_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/raihanramadan/catkin_ws/src/beginner_tutorials/msg/Num.msg" NAME_WE)
add_dependencies(Kamera_generate_messages_py _Kamera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raihanramadan/catkin_ws/src/beginner_tutorials/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(Kamera_generate_messages_py _Kamera_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Kamera_genpy)
add_dependencies(Kamera_genpy Kamera_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Kamera_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Kamera)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Kamera
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(Kamera_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Kamera)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Kamera
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(Kamera_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Kamera)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Kamera
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(Kamera_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Kamera)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Kamera
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(Kamera_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Kamera)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Kamera\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Kamera
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(Kamera_generate_messages_py std_msgs_generate_messages_py)
endif()
