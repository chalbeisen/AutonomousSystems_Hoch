; Auto-generated. Do not edit!


(cl:in-package turtlesim_halbeisen-srv)


;//! \htmlinclude StopControl-request.msg.html

(cl:defclass <StopControl-request> (roslisp-msg-protocol:ros-message)
  ((is_publishing
    :reader is_publishing
    :initarg :is_publishing
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StopControl-request (<StopControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlesim_halbeisen-srv:<StopControl-request> is deprecated: use turtlesim_halbeisen-srv:StopControl-request instead.")))

(cl:ensure-generic-function 'is_publishing-val :lambda-list '(m))
(cl:defmethod is_publishing-val ((m <StopControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim_halbeisen-srv:is_publishing-val is deprecated.  Use turtlesim_halbeisen-srv:is_publishing instead.")
  (is_publishing m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopControl-request>) ostream)
  "Serializes a message object of type '<StopControl-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_publishing) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopControl-request>) istream)
  "Deserializes a message object of type '<StopControl-request>"
    (cl:setf (cl:slot-value msg 'is_publishing) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopControl-request>)))
  "Returns string type for a service object of type '<StopControl-request>"
  "turtlesim_halbeisen/StopControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopControl-request)))
  "Returns string type for a service object of type 'StopControl-request"
  "turtlesim_halbeisen/StopControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopControl-request>)))
  "Returns md5sum for a message object of type '<StopControl-request>"
  "e90fd0c296d28562ef619e70f6278695")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopControl-request)))
  "Returns md5sum for a message object of type 'StopControl-request"
  "e90fd0c296d28562ef619e70f6278695")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopControl-request>)))
  "Returns full string definition for message of type '<StopControl-request>"
  (cl:format cl:nil "bool is_publishing~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopControl-request)))
  "Returns full string definition for message of type 'StopControl-request"
  (cl:format cl:nil "bool is_publishing~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopControl-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StopControl-request
    (cl:cons ':is_publishing (is_publishing msg))
))
;//! \htmlinclude StopControl-response.msg.html

(cl:defclass <StopControl-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StopControl-response (<StopControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlesim_halbeisen-srv:<StopControl-response> is deprecated: use turtlesim_halbeisen-srv:StopControl-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <StopControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim_halbeisen-srv:success-val is deprecated.  Use turtlesim_halbeisen-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopControl-response>) ostream)
  "Serializes a message object of type '<StopControl-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopControl-response>) istream)
  "Deserializes a message object of type '<StopControl-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopControl-response>)))
  "Returns string type for a service object of type '<StopControl-response>"
  "turtlesim_halbeisen/StopControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopControl-response)))
  "Returns string type for a service object of type 'StopControl-response"
  "turtlesim_halbeisen/StopControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopControl-response>)))
  "Returns md5sum for a message object of type '<StopControl-response>"
  "e90fd0c296d28562ef619e70f6278695")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopControl-response)))
  "Returns md5sum for a message object of type 'StopControl-response"
  "e90fd0c296d28562ef619e70f6278695")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopControl-response>)))
  "Returns full string definition for message of type '<StopControl-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopControl-response)))
  "Returns full string definition for message of type 'StopControl-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopControl-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StopControl-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StopControl)))
  'StopControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StopControl)))
  'StopControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopControl)))
  "Returns string type for a service object of type '<StopControl>"
  "turtlesim_halbeisen/StopControl")