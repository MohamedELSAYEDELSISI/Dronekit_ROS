;; Auto-generated. Do not edit!


(when (boundp 'ross::pose_service)
  (if (not (find-package "ROSS"))
    (make-package "ROSS"))
  (shadow 'pose_service (find-package "ROSS")))
(unless (find-package "ROSS::POSE_SERVICE")
  (make-package "ROSS::POSE_SERVICE"))
(unless (find-package "ROSS::POSE_SERVICEREQUEST")
  (make-package "ROSS::POSE_SERVICEREQUEST"))
(unless (find-package "ROSS::POSE_SERVICERESPONSE")
  (make-package "ROSS::POSE_SERVICERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass ross::pose_serviceRequest
  :super ros::object
  :slots (_pose ))

(defmethod ross::pose_serviceRequest
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass ross::pose_serviceResponse
  :super ros::object
  :slots (_Ack ))

(defmethod ross::pose_serviceResponse
  (:init
   (&key
    ((:Ack __Ack) 0.0)
    )
   (send-super :init)
   (setq _Ack (float __Ack))
   self)
  (:Ack
   (&optional __Ack)
   (if __Ack (setq _Ack __Ack)) _Ack)
  (:serialization-length
   ()
   (+
    ;; float32 _Ack
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _Ack
       (sys::poke _Ack (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _Ack
     (setq _Ack (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ross::pose_service
  :super ros::object
  :slots ())

(setf (get ross::pose_service :md5sum-) "dfade6cad8d25888383325cca23ea6eb")
(setf (get ross::pose_service :datatype-) "ross/pose_service")
(setf (get ross::pose_service :request) ross::pose_serviceRequest)
(setf (get ross::pose_service :response) ross::pose_serviceResponse)

(defmethod ross::pose_serviceRequest
  (:response () (instance ross::pose_serviceResponse :init)))

(setf (get ross::pose_serviceRequest :md5sum-) "dfade6cad8d25888383325cca23ea6eb")
(setf (get ross::pose_serviceRequest :datatype-) "ross/pose_serviceRequest")
(setf (get ross::pose_serviceRequest :definition-)
      "geometry_msgs/Point pose

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
float32 Ack

")

(setf (get ross::pose_serviceResponse :md5sum-) "dfade6cad8d25888383325cca23ea6eb")
(setf (get ross::pose_serviceResponse :datatype-) "ross/pose_serviceResponse")
(setf (get ross::pose_serviceResponse :definition-)
      "geometry_msgs/Point pose

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
float32 Ack

")



(provide :ross/pose_service "dfade6cad8d25888383325cca23ea6eb")


