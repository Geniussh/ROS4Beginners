;; Auto-generated. Do not edit!


(when (boundp 'path_exam::RecordOdomGoal)
  (if (not (find-package "PATH_EXAM"))
    (make-package "PATH_EXAM"))
  (shadow 'RecordOdomGoal (find-package "PATH_EXAM")))
(unless (find-package "PATH_EXAM::RECORDODOMGOAL")
  (make-package "PATH_EXAM::RECORDODOMGOAL"))

(in-package "ROS")
;;//! \htmlinclude RecordOdomGoal.msg.html


(defclass path_exam::RecordOdomGoal
  :super ros::object
  :slots ())

(defmethod path_exam::RecordOdomGoal
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get path_exam::RecordOdomGoal :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get path_exam::RecordOdomGoal :datatype-) "path_exam/RecordOdomGoal")
(setf (get path_exam::RecordOdomGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#goal

")



(provide :path_exam/RecordOdomGoal "d41d8cd98f00b204e9800998ecf8427e")

