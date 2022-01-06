# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "path_exam: 7 messages, 0 services")

set(MSG_I_FLAGS "-Ipath_exam:/home/user/catkin_ws/devel/share/path_exam/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(path_exam_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionGoal.msg" NAME_WE)
add_custom_target(_path_exam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "path_exam" "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionGoal.msg" "path_exam/RecordOdomGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomAction.msg" NAME_WE)
add_custom_target(_path_exam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "path_exam" "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomAction.msg" "path_exam/RecordOdomActionGoal:path_exam/RecordOdomGoal:actionlib_msgs/GoalStatus:path_exam/RecordOdomActionFeedback:geometry_msgs/Quaternion:geometry_msgs/Point:path_exam/RecordOdomFeedback:path_exam/RecordOdomActionResult:path_exam/RecordOdomResult:geometry_msgs/Pose:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomResult.msg" NAME_WE)
add_custom_target(_path_exam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "path_exam" "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomResult.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionFeedback.msg" NAME_WE)
add_custom_target(_path_exam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "path_exam" "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionFeedback.msg" "actionlib_msgs/GoalID:std_msgs/Header:path_exam/RecordOdomFeedback:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionResult.msg" NAME_WE)
add_custom_target(_path_exam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "path_exam" "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionResult.msg" "actionlib_msgs/GoalID:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Pose:path_exam/RecordOdomResult:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomGoal.msg" NAME_WE)
add_custom_target(_path_exam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "path_exam" "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomGoal.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomFeedback.msg" NAME_WE)
add_custom_target(_path_exam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "path_exam" "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(path_exam
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomAction.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionGoal.msg;/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomFeedback.msg;/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionResult.msg;/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/path_exam
)
_generate_msg_cpp(path_exam
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/path_exam
)
_generate_msg_cpp(path_exam
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/path_exam
)
_generate_msg_cpp(path_exam
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/path_exam
)
_generate_msg_cpp(path_exam
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/path_exam
)
_generate_msg_cpp(path_exam
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/path_exam
)
_generate_msg_cpp(path_exam
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/path_exam
)

### Generating Services

### Generating Module File
_generate_module_cpp(path_exam
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/path_exam
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(path_exam_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(path_exam_generate_messages path_exam_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionGoal.msg" NAME_WE)
add_dependencies(path_exam_generate_messages_cpp _path_exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomAction.msg" NAME_WE)
add_dependencies(path_exam_generate_messages_cpp _path_exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomResult.msg" NAME_WE)
add_dependencies(path_exam_generate_messages_cpp _path_exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionFeedback.msg" NAME_WE)
add_dependencies(path_exam_generate_messages_cpp _path_exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionResult.msg" NAME_WE)
add_dependencies(path_exam_generate_messages_cpp _path_exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomGoal.msg" NAME_WE)
add_dependencies(path_exam_generate_messages_cpp _path_exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomFeedback.msg" NAME_WE)
add_dependencies(path_exam_generate_messages_cpp _path_exam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(path_exam_gencpp)
add_dependencies(path_exam_gencpp path_exam_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS path_exam_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(path_exam
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomAction.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionGoal.msg;/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomFeedback.msg;/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionResult.msg;/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/path_exam
)
_generate_msg_eus(path_exam
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/path_exam
)
_generate_msg_eus(path_exam
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/path_exam
)
_generate_msg_eus(path_exam
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/path_exam
)
_generate_msg_eus(path_exam
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/path_exam
)
_generate_msg_eus(path_exam
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/path_exam
)
_generate_msg_eus(path_exam
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/path_exam
)

### Generating Services

### Generating Module File
_generate_module_eus(path_exam
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/path_exam
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(path_exam_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(path_exam_generate_messages path_exam_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionGoal.msg" NAME_WE)
add_dependencies(path_exam_generate_messages_eus _path_exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomAction.msg" NAME_WE)
add_dependencies(path_exam_generate_messages_eus _path_exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomResult.msg" NAME_WE)
add_dependencies(path_exam_generate_messages_eus _path_exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionFeedback.msg" NAME_WE)
add_dependencies(path_exam_generate_messages_eus _path_exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionResult.msg" NAME_WE)
add_dependencies(path_exam_generate_messages_eus _path_exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomGoal.msg" NAME_WE)
add_dependencies(path_exam_generate_messages_eus _path_exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomFeedback.msg" NAME_WE)
add_dependencies(path_exam_generate_messages_eus _path_exam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(path_exam_geneus)
add_dependencies(path_exam_geneus path_exam_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS path_exam_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(path_exam
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomAction.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionGoal.msg;/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomFeedback.msg;/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionResult.msg;/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/path_exam
)
_generate_msg_lisp(path_exam
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/path_exam
)
_generate_msg_lisp(path_exam
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/path_exam
)
_generate_msg_lisp(path_exam
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/path_exam
)
_generate_msg_lisp(path_exam
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/path_exam
)
_generate_msg_lisp(path_exam
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/path_exam
)
_generate_msg_lisp(path_exam
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/path_exam
)

### Generating Services

### Generating Module File
_generate_module_lisp(path_exam
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/path_exam
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(path_exam_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(path_exam_generate_messages path_exam_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionGoal.msg" NAME_WE)
add_dependencies(path_exam_generate_messages_lisp _path_exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomAction.msg" NAME_WE)
add_dependencies(path_exam_generate_messages_lisp _path_exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomResult.msg" NAME_WE)
add_dependencies(path_exam_generate_messages_lisp _path_exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionFeedback.msg" NAME_WE)
add_dependencies(path_exam_generate_messages_lisp _path_exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionResult.msg" NAME_WE)
add_dependencies(path_exam_generate_messages_lisp _path_exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomGoal.msg" NAME_WE)
add_dependencies(path_exam_generate_messages_lisp _path_exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomFeedback.msg" NAME_WE)
add_dependencies(path_exam_generate_messages_lisp _path_exam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(path_exam_genlisp)
add_dependencies(path_exam_genlisp path_exam_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS path_exam_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(path_exam
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomAction.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionGoal.msg;/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomFeedback.msg;/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionResult.msg;/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/path_exam
)
_generate_msg_nodejs(path_exam
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/path_exam
)
_generate_msg_nodejs(path_exam
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/path_exam
)
_generate_msg_nodejs(path_exam
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/path_exam
)
_generate_msg_nodejs(path_exam
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/path_exam
)
_generate_msg_nodejs(path_exam
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/path_exam
)
_generate_msg_nodejs(path_exam
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/path_exam
)

### Generating Services

### Generating Module File
_generate_module_nodejs(path_exam
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/path_exam
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(path_exam_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(path_exam_generate_messages path_exam_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionGoal.msg" NAME_WE)
add_dependencies(path_exam_generate_messages_nodejs _path_exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomAction.msg" NAME_WE)
add_dependencies(path_exam_generate_messages_nodejs _path_exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomResult.msg" NAME_WE)
add_dependencies(path_exam_generate_messages_nodejs _path_exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionFeedback.msg" NAME_WE)
add_dependencies(path_exam_generate_messages_nodejs _path_exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionResult.msg" NAME_WE)
add_dependencies(path_exam_generate_messages_nodejs _path_exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomGoal.msg" NAME_WE)
add_dependencies(path_exam_generate_messages_nodejs _path_exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomFeedback.msg" NAME_WE)
add_dependencies(path_exam_generate_messages_nodejs _path_exam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(path_exam_gennodejs)
add_dependencies(path_exam_gennodejs path_exam_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS path_exam_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(path_exam
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomAction.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionGoal.msg;/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomFeedback.msg;/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionResult.msg;/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/path_exam
)
_generate_msg_py(path_exam
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/path_exam
)
_generate_msg_py(path_exam
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/path_exam
)
_generate_msg_py(path_exam
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/path_exam
)
_generate_msg_py(path_exam
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/path_exam
)
_generate_msg_py(path_exam
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/path_exam
)
_generate_msg_py(path_exam
  "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/path_exam
)

### Generating Services

### Generating Module File
_generate_module_py(path_exam
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/path_exam
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(path_exam_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(path_exam_generate_messages path_exam_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionGoal.msg" NAME_WE)
add_dependencies(path_exam_generate_messages_py _path_exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomAction.msg" NAME_WE)
add_dependencies(path_exam_generate_messages_py _path_exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomResult.msg" NAME_WE)
add_dependencies(path_exam_generate_messages_py _path_exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionFeedback.msg" NAME_WE)
add_dependencies(path_exam_generate_messages_py _path_exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomActionResult.msg" NAME_WE)
add_dependencies(path_exam_generate_messages_py _path_exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomGoal.msg" NAME_WE)
add_dependencies(path_exam_generate_messages_py _path_exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/path_exam/msg/RecordOdomFeedback.msg" NAME_WE)
add_dependencies(path_exam_generate_messages_py _path_exam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(path_exam_genpy)
add_dependencies(path_exam_genpy path_exam_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS path_exam_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/path_exam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/path_exam
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(path_exam_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(path_exam_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/path_exam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/path_exam
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(path_exam_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(path_exam_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/path_exam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/path_exam
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(path_exam_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(path_exam_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/path_exam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/path_exam
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(path_exam_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(path_exam_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/path_exam)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/path_exam\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/path_exam
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(path_exam_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(path_exam_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
