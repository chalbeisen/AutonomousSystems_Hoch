
(cl:in-package :asdf)

(defsystem "turtlesim_halbeisen-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :turtlesim-msg
)
  :components ((:file "_package")
    (:file "TurtlesimState" :depends-on ("_package_TurtlesimState"))
    (:file "_package_TurtlesimState" :depends-on ("_package"))
  ))