
(cl:in-package :asdf)

(defsystem "ross-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "vehicle_status" :depends-on ("_package_vehicle_status"))
    (:file "_package_vehicle_status" :depends-on ("_package"))
  ))