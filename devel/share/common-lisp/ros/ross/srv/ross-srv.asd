
(cl:in-package :asdf)

(defsystem "ross-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "RTL" :depends-on ("_package_RTL"))
    (:file "_package_RTL" :depends-on ("_package"))
    (:file "confg_mode" :depends-on ("_package_confg_mode"))
    (:file "_package_confg_mode" :depends-on ("_package"))
    (:file "land" :depends-on ("_package_land"))
    (:file "_package_land" :depends-on ("_package"))
    (:file "pose_service" :depends-on ("_package_pose_service"))
    (:file "_package_pose_service" :depends-on ("_package"))
    (:file "takeoff" :depends-on ("_package_takeoff"))
    (:file "_package_takeoff" :depends-on ("_package"))
  ))