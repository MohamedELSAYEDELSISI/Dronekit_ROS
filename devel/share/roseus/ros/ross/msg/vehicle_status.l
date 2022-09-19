;; Auto-generated. Do not edit!


(when (boundp 'ross::vehicle_status)
  (if (not (find-package "ROSS"))
    (make-package "ROSS"))
  (shadow 'vehicle_status (find-package "ROSS")))
(unless (find-package "ROSS::VEHICLE_STATUS")
  (make-package "ROSS::VEHICLE_STATUS"))

(in-package "ROS")
;;//! \htmlinclude vehicle_status.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ross::vehicle_status
  :super ros::object
  :slots (_Battery_Status _Velocity_Status _Alt_Status _Position_x _Position_y ))

(defmethod ross::vehicle_status
  (:init
   (&key
    ((:Battery_Status __Battery_Status) (instance std_msgs::String :init))
    ((:Velocity_Status __Velocity_Status) (instance std_msgs::String :init))
    ((:Alt_Status __Alt_Status) (instance std_msgs::String :init))
    ((:Position_x __Position_x) (instance std_msgs::String :init))
    ((:Position_y __Position_y) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _Battery_Status __Battery_Status)
   (setq _Velocity_Status __Velocity_Status)
   (setq _Alt_Status __Alt_Status)
   (setq _Position_x __Position_x)
   (setq _Position_y __Position_y)
   self)
  (:Battery_Status
   (&rest __Battery_Status)
   (if (keywordp (car __Battery_Status))
       (send* _Battery_Status __Battery_Status)
     (progn
       (if __Battery_Status (setq _Battery_Status (car __Battery_Status)))
       _Battery_Status)))
  (:Velocity_Status
   (&rest __Velocity_Status)
   (if (keywordp (car __Velocity_Status))
       (send* _Velocity_Status __Velocity_Status)
     (progn
       (if __Velocity_Status (setq _Velocity_Status (car __Velocity_Status)))
       _Velocity_Status)))
  (:Alt_Status
   (&rest __Alt_Status)
   (if (keywordp (car __Alt_Status))
       (send* _Alt_Status __Alt_Status)
     (progn
       (if __Alt_Status (setq _Alt_Status (car __Alt_Status)))
       _Alt_Status)))
  (:Position_x
   (&rest __Position_x)
   (if (keywordp (car __Position_x))
       (send* _Position_x __Position_x)
     (progn
       (if __Position_x (setq _Position_x (car __Position_x)))
       _Position_x)))
  (:Position_y
   (&rest __Position_y)
   (if (keywordp (car __Position_y))
       (send* _Position_y __Position_y)
     (progn
       (if __Position_y (setq _Position_y (car __Position_y)))
       _Position_y)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _Battery_Status
    (send _Battery_Status :serialization-length)
    ;; std_msgs/String _Velocity_Status
    (send _Velocity_Status :serialization-length)
    ;; std_msgs/String _Alt_Status
    (send _Alt_Status :serialization-length)
    ;; std_msgs/String _Position_x
    (send _Position_x :serialization-length)
    ;; std_msgs/String _Position_y
    (send _Position_y :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _Battery_Status
       (send _Battery_Status :serialize s)
     ;; std_msgs/String _Velocity_Status
       (send _Velocity_Status :serialize s)
     ;; std_msgs/String _Alt_Status
       (send _Alt_Status :serialize s)
     ;; std_msgs/String _Position_x
       (send _Position_x :serialize s)
     ;; std_msgs/String _Position_y
       (send _Position_y :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _Battery_Status
     (send _Battery_Status :deserialize buf ptr-) (incf ptr- (send _Battery_Status :serialization-length))
   ;; std_msgs/String _Velocity_Status
     (send _Velocity_Status :deserialize buf ptr-) (incf ptr- (send _Velocity_Status :serialization-length))
   ;; std_msgs/String _Alt_Status
     (send _Alt_Status :deserialize buf ptr-) (incf ptr- (send _Alt_Status :serialization-length))
   ;; std_msgs/String _Position_x
     (send _Position_x :deserialize buf ptr-) (incf ptr- (send _Position_x :serialization-length))
   ;; std_msgs/String _Position_y
     (send _Position_y :deserialize buf ptr-) (incf ptr- (send _Position_y :serialization-length))
   ;;
   self)
  )

(setf (get ross::vehicle_status :md5sum-) "aaafa5c64ffa127d3610f378ae59fa7f")
(setf (get ross::vehicle_status :datatype-) "ross/vehicle_status")
(setf (get ross::vehicle_status :definition-)
      "std_msgs/String Battery_Status
std_msgs/String Velocity_Status
std_msgs/String Alt_Status 
std_msgs/String Position_x
std_msgs/String Position_y

================================================================================
MSG: std_msgs/String
string data

")



(provide :ross/vehicle_status "aaafa5c64ffa127d3610f378ae59fa7f")


