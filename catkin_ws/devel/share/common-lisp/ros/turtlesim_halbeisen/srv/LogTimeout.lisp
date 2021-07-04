; Auto-generated. Do not edit!


(cl:in-package turtlesim_halbeisen-srv)


;//! \htmlinclude LogTimeout-request.msg.html

(cl:defclass <LogTimeout-request> (roslisp-msg-protocol:ros-message)
  ((timeout
    :reader timeout
    :initarg :timeout
    :type cl:integer
    :initform 0))
)

(cl:defclass LogTimeout-request (<LogTimeout-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LogTimeout-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LogTimeout-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlesim_halbeisen-srv:<LogTimeout-request> is deprecated: use turtlesim_halbeisen-srv:LogTimeout-request instead.")))

(cl:ensure-generic-function 'timeout-val :lambda-list '(m))
(cl:defmethod timeout-val ((m <LogTimeout-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim_halbeisen-srv:timeout-val is deprecated.  Use turtlesim_halbeisen-srv:timeout instead.")
  (timeout m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LogTimeout-request>) ostream)
  "Serializes a message object of type '<LogTimeout-request>"
  (cl:let* ((signed (cl:slot-value msg 'timeout)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LogTimeout-request>) istream)
  "Deserializes a message object of type '<LogTimeout-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timeout) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LogTimeout-request>)))
  "Returns string type for a service object of type '<LogTimeout-request>"
  "turtlesim_halbeisen/LogTimeoutRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LogTimeout-request)))
  "Returns string type for a service object of type 'LogTimeout-request"
  "turtlesim_halbeisen/LogTimeoutRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LogTimeout-request>)))
  "Returns md5sum for a message object of type '<LogTimeout-request>"
  "ef3f1af6b06d40838f2017e4d10ed185")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LogTimeout-request)))
  "Returns md5sum for a message object of type 'LogTimeout-request"
  "ef3f1af6b06d40838f2017e4d10ed185")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LogTimeout-request>)))
  "Returns full string definition for message of type '<LogTimeout-request>"
  (cl:format cl:nil "int64 timeout~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LogTimeout-request)))
  "Returns full string definition for message of type 'LogTimeout-request"
  (cl:format cl:nil "int64 timeout~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LogTimeout-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LogTimeout-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LogTimeout-request
    (cl:cons ':timeout (timeout msg))
))
;//! \htmlinclude LogTimeout-response.msg.html

(cl:defclass <LogTimeout-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LogTimeout-response (<LogTimeout-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LogTimeout-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LogTimeout-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlesim_halbeisen-srv:<LogTimeout-response> is deprecated: use turtlesim_halbeisen-srv:LogTimeout-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <LogTimeout-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim_halbeisen-srv:success-val is deprecated.  Use turtlesim_halbeisen-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LogTimeout-response>) ostream)
  "Serializes a message object of type '<LogTimeout-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LogTimeout-response>) istream)
  "Deserializes a message object of type '<LogTimeout-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LogTimeout-response>)))
  "Returns string type for a service object of type '<LogTimeout-response>"
  "turtlesim_halbeisen/LogTimeoutResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LogTimeout-response)))
  "Returns string type for a service object of type 'LogTimeout-response"
  "turtlesim_halbeisen/LogTimeoutResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LogTimeout-response>)))
  "Returns md5sum for a message object of type '<LogTimeout-response>"
  "ef3f1af6b06d40838f2017e4d10ed185")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LogTimeout-response)))
  "Returns md5sum for a message object of type 'LogTimeout-response"
  "ef3f1af6b06d40838f2017e4d10ed185")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LogTimeout-response>)))
  "Returns full string definition for message of type '<LogTimeout-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LogTimeout-response)))
  "Returns full string definition for message of type 'LogTimeout-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LogTimeout-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LogTimeout-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LogTimeout-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LogTimeout)))
  'LogTimeout-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LogTimeout)))
  'LogTimeout-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LogTimeout)))
  "Returns string type for a service object of type '<LogTimeout>"
  "turtlesim_halbeisen/LogTimeout")