;; Auto-generated. Do not edit!


(when (boundp 'ross::takeoff)
  (if (not (find-package "ROSS"))
    (make-package "ROSS"))
  (shadow 'takeoff (find-package "ROSS")))
(unless (find-package "ROSS::TAKEOFF")
  (make-package "ROSS::TAKEOFF"))
(unless (find-package "ROSS::TAKEOFFREQUEST")
  (make-package "ROSS::TAKEOFFREQUEST"))
(unless (find-package "ROSS::TAKEOFFRESPONSE")
  (make-package "ROSS::TAKEOFFRESPONSE"))

(in-package "ROS")





(defclass ross::takeoffRequest
  :super ros::object
  :slots (_Height ))

(defmethod ross::takeoffRequest
  (:init
   (&key
    ((:Height __Height) 0.0)
    )
   (send-super :init)
   (setq _Height (float __Height))
   self)
  (:Height
   (&optional __Height)
   (if __Height (setq _Height __Height)) _Height)
  (:serialization-length
   ()
   (+
    ;; float32 _Height
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _Height
       (sys::poke _Height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _Height
     (setq _Height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ross::takeoffResponse
  :super ros::object
  :slots (_ok ))

(defmethod ross::takeoffResponse
  (:init
   (&key
    ((:ok __ok) 0.0)
    )
   (send-super :init)
   (setq _ok (float __ok))
   self)
  (:ok
   (&optional __ok)
   (if __ok (setq _ok __ok)) _ok)
  (:serialization-length
   ()
   (+
    ;; float32 _ok
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _ok
       (sys::poke _ok (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _ok
     (setq _ok (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ross::takeoff
  :super ros::object
  :slots ())

(setf (get ross::takeoff :md5sum-) "ac516dd7f44daec312f7639f631f2f8d")
(setf (get ross::takeoff :datatype-) "ross/takeoff")
(setf (get ross::takeoff :request) ross::takeoffRequest)
(setf (get ross::takeoff :response) ross::takeoffResponse)

(defmethod ross::takeoffRequest
  (:response () (instance ross::takeoffResponse :init)))

(setf (get ross::takeoffRequest :md5sum-) "ac516dd7f44daec312f7639f631f2f8d")
(setf (get ross::takeoffRequest :datatype-) "ross/takeoffRequest")
(setf (get ross::takeoffRequest :definition-)
      "float32 Height
---
float32 ok

")

(setf (get ross::takeoffResponse :md5sum-) "ac516dd7f44daec312f7639f631f2f8d")
(setf (get ross::takeoffResponse :datatype-) "ross/takeoffResponse")
(setf (get ross::takeoffResponse :definition-)
      "float32 Height
---
float32 ok

")



(provide :ross/takeoff "ac516dd7f44daec312f7639f631f2f8d")


