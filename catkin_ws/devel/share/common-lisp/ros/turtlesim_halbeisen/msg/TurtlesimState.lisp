; Auto-generated. Do not edit!


(cl:in-package turtlesim_halbeisen-msg)


;//! \htmlinclude TurtlesimState.msg.html

(cl:defclass <TurtlesimState> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type turtlesim-msg:Pose
    :initform (cl:make-instance 'turtlesim-msg:Pose))
   (color
    :reader color
    :initarg :color
    :type turtlesim-msg:Color
    :initform (cl:make-instance 'turtlesim-msg:Color))
   (twist
    :reader twist
    :initarg :twist
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist)))
)

(cl:defclass TurtlesimState (<TurtlesimState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TurtlesimState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TurtlesimState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlesim_halbeisen-msg:<TurtlesimState> is deprecated: use turtlesim_halbeisen-msg:TurtlesimState instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <TurtlesimState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim_halbeisen-msg:pose-val is deprecated.  Use turtlesim_halbeisen-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <TurtlesimState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim_halbeisen-msg:color-val is deprecated.  Use turtlesim_halbeisen-msg:color instead.")
  (color m))

(cl:ensure-generic-function 'twist-val :lambda-list '(m))
(cl:defmethod twist-val ((m <TurtlesimState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim_halbeisen-msg:twist-val is deprecated.  Use turtlesim_halbeisen-msg:twist instead.")
  (twist m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TurtlesimState>) ostream)
  "Serializes a message object of type '<TurtlesimState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'color) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'twist) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TurtlesimState>) istream)
  "Deserializes a message object of type '<TurtlesimState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'color) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'twist) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TurtlesimState>)))
  "Returns string type for a message object of type '<TurtlesimState>"
  "turtlesim_halbeisen/TurtlesimState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TurtlesimState)))
  "Returns string type for a message object of type 'TurtlesimState"
  "turtlesim_halbeisen/TurtlesimState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TurtlesimState>)))
  "Returns md5sum for a message object of type '<TurtlesimState>"
  "7c35fa8e2a3f6d67a17abc9bc29d508c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TurtlesimState)))
  "Returns md5sum for a message object of type 'TurtlesimState"
  "7c35fa8e2a3f6d67a17abc9bc29d508c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TurtlesimState>)))
  "Returns full string definition for message of type '<TurtlesimState>"
  (cl:format cl:nil "turtlesim/Pose pose~%turtlesim/Color color~%geometry_msgs/Twist twist~%================================================================================~%MSG: turtlesim/Pose~%float32 x~%float32 y~%float32 theta~%~%float32 linear_velocity~%float32 angular_velocity~%================================================================================~%MSG: turtlesim/Color~%uint8 r~%uint8 g~%uint8 b~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TurtlesimState)))
  "Returns full string definition for message of type 'TurtlesimState"
  (cl:format cl:nil "turtlesim/Pose pose~%turtlesim/Color color~%geometry_msgs/Twist twist~%================================================================================~%MSG: turtlesim/Pose~%float32 x~%float32 y~%float32 theta~%~%float32 linear_velocity~%float32 angular_velocity~%================================================================================~%MSG: turtlesim/Color~%uint8 r~%uint8 g~%uint8 b~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TurtlesimState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'color))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'twist))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TurtlesimState>))
  "Converts a ROS message object to a list"
  (cl:list 'TurtlesimState
    (cl:cons ':pose (pose msg))
    (cl:cons ':color (color msg))
    (cl:cons ':twist (twist msg))
))
