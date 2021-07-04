;; Auto-generated. Do not edit!


(when (boundp 'turtlesim_halbeisen::LogTimeout)
  (if (not (find-package "TURTLESIM_HALBEISEN"))
    (make-package "TURTLESIM_HALBEISEN"))
  (shadow 'LogTimeout (find-package "TURTLESIM_HALBEISEN")))
(unless (find-package "TURTLESIM_HALBEISEN::LOGTIMEOUT")
  (make-package "TURTLESIM_HALBEISEN::LOGTIMEOUT"))
(unless (find-package "TURTLESIM_HALBEISEN::LOGTIMEOUTREQUEST")
  (make-package "TURTLESIM_HALBEISEN::LOGTIMEOUTREQUEST"))
(unless (find-package "TURTLESIM_HALBEISEN::LOGTIMEOUTRESPONSE")
  (make-package "TURTLESIM_HALBEISEN::LOGTIMEOUTRESPONSE"))

(in-package "ROS")





(defclass turtlesim_halbeisen::LogTimeoutRequest
  :super ros::object
  :slots (_timeout ))

(defmethod turtlesim_halbeisen::LogTimeoutRequest
  (:init
   (&key
    ((:timeout __timeout) 0)
    )
   (send-super :init)
   (setq _timeout (round __timeout))
   self)
  (:timeout
   (&optional __timeout)
   (if __timeout (setq _timeout __timeout)) _timeout)
  (:serialization-length
   ()
   (+
    ;; int64 _timeout
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _timeout
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _timeout (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _timeout) (= (length (_timeout . bv)) 2)) ;; bignum
              (write-long (ash (elt (_timeout . bv) 0) 0) s)
              (write-long (ash (elt (_timeout . bv) 1) -1) s))
             ((and (class _timeout) (= (length (_timeout . bv)) 1)) ;; big1
              (write-long (elt (_timeout . bv) 0) s)
              (write-long (if (>= _timeout 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _timeout s)(write-long (if (>= _timeout 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _timeout
#+(or :alpha :irix6 :x86_64)
      (setf _timeout (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _timeout (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass turtlesim_halbeisen::LogTimeoutResponse
  :super ros::object
  :slots (_success ))

(defmethod turtlesim_halbeisen::LogTimeoutResponse
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

(defclass turtlesim_halbeisen::LogTimeout
  :super ros::object
  :slots ())

(setf (get turtlesim_halbeisen::LogTimeout :md5sum-) "ef3f1af6b06d40838f2017e4d10ed185")
(setf (get turtlesim_halbeisen::LogTimeout :datatype-) "turtlesim_halbeisen/LogTimeout")
(setf (get turtlesim_halbeisen::LogTimeout :request) turtlesim_halbeisen::LogTimeoutRequest)
(setf (get turtlesim_halbeisen::LogTimeout :response) turtlesim_halbeisen::LogTimeoutResponse)

(defmethod turtlesim_halbeisen::LogTimeoutRequest
  (:response () (instance turtlesim_halbeisen::LogTimeoutResponse :init)))

(setf (get turtlesim_halbeisen::LogTimeoutRequest :md5sum-) "ef3f1af6b06d40838f2017e4d10ed185")
(setf (get turtlesim_halbeisen::LogTimeoutRequest :datatype-) "turtlesim_halbeisen/LogTimeoutRequest")
(setf (get turtlesim_halbeisen::LogTimeoutRequest :definition-)
      "int64 timeout
---
bool success
")

(setf (get turtlesim_halbeisen::LogTimeoutResponse :md5sum-) "ef3f1af6b06d40838f2017e4d10ed185")
(setf (get turtlesim_halbeisen::LogTimeoutResponse :datatype-) "turtlesim_halbeisen/LogTimeoutResponse")
(setf (get turtlesim_halbeisen::LogTimeoutResponse :definition-)
      "int64 timeout
---
bool success
")



(provide :turtlesim_halbeisen/LogTimeout "ef3f1af6b06d40838f2017e4d10ed185")


