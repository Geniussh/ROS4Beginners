
(cl:in-package :asdf)

(defsystem "path_exam-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "RecordOdomAction" :depends-on ("_package_RecordOdomAction"))
    (:file "_package_RecordOdomAction" :depends-on ("_package"))
    (:file "RecordOdomActionFeedback" :depends-on ("_package_RecordOdomActionFeedback"))
    (:file "_package_RecordOdomActionFeedback" :depends-on ("_package"))
    (:file "RecordOdomActionGoal" :depends-on ("_package_RecordOdomActionGoal"))
    (:file "_package_RecordOdomActionGoal" :depends-on ("_package"))
    (:file "RecordOdomActionResult" :depends-on ("_package_RecordOdomActionResult"))
    (:file "_package_RecordOdomActionResult" :depends-on ("_package"))
    (:file "RecordOdomFeedback" :depends-on ("_package_RecordOdomFeedback"))
    (:file "_package_RecordOdomFeedback" :depends-on ("_package"))
    (:file "RecordOdomGoal" :depends-on ("_package_RecordOdomGoal"))
    (:file "_package_RecordOdomGoal" :depends-on ("_package"))
    (:file "RecordOdomResult" :depends-on ("_package_RecordOdomResult"))
    (:file "_package_RecordOdomResult" :depends-on ("_package"))
  ))