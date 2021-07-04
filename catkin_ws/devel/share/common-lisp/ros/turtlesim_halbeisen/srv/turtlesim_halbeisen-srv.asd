
(cl:in-package :asdf)

(defsystem "turtlesim_halbeisen-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "LogTimeout" :depends-on ("_package_LogTimeout"))
    (:file "_package_LogTimeout" :depends-on ("_package"))
    (:file "StopControl" :depends-on ("_package_StopControl"))
    (:file "_package_StopControl" :depends-on ("_package"))
  ))