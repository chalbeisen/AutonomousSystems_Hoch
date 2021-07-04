;; Auto-generated. Do not edit!


(when (boundp 'turtlesim_halbeisen::StopControl)
  (if (not (find-package "TURTLESIM_HALBEISEN"))
    (make-package "TURTLESIM_HALBEISEN"))
  (shadow 'StopControl (find-package "TURTLESIM_HALBEISEN")))
(unless (find-package "TURTLESIM_HALBEISEN::STOPCONTROL")
  (make-package "TURTLESIM_HALBEISEN::STOPCONTROL"))
(unless (find-package "TURTLESIM_HALBEISEN::STOPCONTROLREQUEST")
  (make-package "TURTLESIM_HALBEISEN::STOPCONTROLREQUEST"))
(unless (find-package "TURTLESIM_HALBEISEN::STOPCONTROLRESPONSE")
  (make-package "TURTLESIM_HALBEISEN::STOPCONTROLRESPONSE"))

(in-package "ROS")





(defclass turtlesim_halbeisen::StopControlRequest
  :super ros::object
  :slots (_is_publishing ))

(defmethod turtlesim_halbeisen::StopControlRequest
  (:init
   (&key
    ((:is_publishing __is_publishing) nil)
    )
   (send-super :init)
   (setq _is_publishing __is_publishing)
   self)
  (:is_publishing
   (&optional (__is_publishing :null))
   (if (not (eq __is_publishing :null)) (setq _is_publishing __is_publishing)) _is_publishing)
  (:serialization-length
   ()
   (+
    ;; bool _is_publishing
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_publishing
       (if _is_publishing (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_publishing
     (setq _is_publishing (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass turtlesim_halbeisen::StopControlResponse
  :super ros::object
  :slots (_success ))

(defmethod turtlesim_halbeisen::StopControlResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass turtlesim_halbeisen::StopControl
  :super ros::object
  :slots ())

(setf (get turtlesim_halbeisen::StopControl :md5sum-) "e90fd0c296d28562ef619e70f6278695")
(setf (get turtlesim_halbeisen::StopControl :datatype-) "turtlesim_halbeisen/StopControl")
(setf (get turtlesim_halbeisen::StopControl :request) turtlesim_halbeisen::StopControlRequest)
(setf (get turtlesim_halbeisen::StopControl :response) turtlesim_halbeisen::StopControlResponse)

(defmethod turtlesim_halbeisen::StopControlRequest
  (:response () (instance turtlesim_halbeisen::StopControlResponse :init)))

(setf (get turtlesim_halbeisen::StopControlRequest :md5sum-) "e90fd0c296d28562ef619e70f6278695")
(setf (get turtlesim_halbeisen::StopControlRequest :datatype-) "turtlesim_halbeisen/StopControlRequest")
(setf (get turtlesim_halbeisen::StopControlRequest :definition-)
      "bool is_publishing
---
bool success
")

(setf (get turtlesim_halbeisen::StopControlResponse :md5sum-) "e90fd0c296d28562ef619e70f6278695")
(setf (get turtlesim_halbeisen::StopControlResponse :datatype-) "turtlesim_halbeisen/StopControlResponse")
(setf (get turtlesim_halbeisen::StopControlResponse :definition-)
      "bool is_publishing
---
bool success
")



(provide :turtlesim_halbeisen/StopControl "e90fd0c296d28562ef619e70f6278695")


