;; Auto-generated. Do not edit!


(when (boundp 'turtlesim_halbeisen::TurtlesimState)
  (if (not (find-package "TURTLESIM_HALBEISEN"))
    (make-package "TURTLESIM_HALBEISEN"))
  (shadow 'TurtlesimState (find-package "TURTLESIM_HALBEISEN")))
(unless (find-package "TURTLESIM_HALBEISEN::TURTLESIMSTATE")
  (make-package "TURTLESIM_HALBEISEN::TURTLESIMSTATE"))

(in-package "ROS")
;;//! \htmlinclude TurtlesimState.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "TURTLESIM"))
  (ros::roseus-add-msgs "turtlesim"))


(defclass turtlesim_halbeisen::TurtlesimState
  :super ros::object
  :slots (_pose _color _twist ))

(defmethod turtlesim_halbeisen::TurtlesimState
  (:init
   (&key
    ((:pose __pose) (instance turtlesim::Pose :init))
    ((:color __color) (instance turtlesim::Color :init))
    ((:twist __twist) (instance geometry_msgs::Twist :init))
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _color __color)
   (setq _twist __twist)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:color
   (&rest __color)
   (if (keywordp (car __color))
       (send* _color __color)
     (progn
       (if __color (setq _color (car __color)))
       _color)))
  (:twist
   (&rest __twist)
   (if (keywordp (car __twist))
       (send* _twist __twist)
     (progn
       (if __twist (setq _twist (car __twist)))
       _twist)))
  (:serialization-length
   ()
   (+
    ;; turtlesim/Pose _pose
    (send _pose :serialization-length)
    ;; turtlesim/Color _color
    (send _color :serialization-length)
    ;; geometry_msgs/Twist _twist
    (send _twist :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; turtlesim/Pose _pose
       (send _pose :serialize s)
     ;; turtlesim/Color _color
       (send _color :serialize s)
     ;; geometry_msgs/Twist _twist
       (send _twist :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; turtlesim/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; turtlesim/Color _color
     (send _color :deserialize buf ptr-) (incf ptr- (send _color :serialization-length))
   ;; geometry_msgs/Twist _twist
     (send _twist :deserialize buf ptr-) (incf ptr- (send _twist :serialization-length))
   ;;
   self)
  )

(setf (get turtlesim_halbeisen::TurtlesimState :md5sum-) "7c35fa8e2a3f6d67a17abc9bc29d508c")
(setf (get turtlesim_halbeisen::TurtlesimState :datatype-) "turtlesim_halbeisen/TurtlesimState")
(setf (get turtlesim_halbeisen::TurtlesimState :definition-)
      "turtlesim/Pose pose
turtlesim/Color color
geometry_msgs/Twist twist
================================================================================
MSG: turtlesim/Pose
float32 x
float32 y
float32 theta

float32 linear_velocity
float32 angular_velocity
================================================================================
MSG: turtlesim/Color
uint8 r
uint8 g
uint8 b

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :turtlesim_halbeisen/TurtlesimState "7c35fa8e2a3f6d67a17abc9bc29d508c")


