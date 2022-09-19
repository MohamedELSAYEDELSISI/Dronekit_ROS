;; Auto-generated. Do not edit!


(when (boundp 'ross::land)
  (if (not (find-package "ROSS"))
    (make-package "ROSS"))
  (shadow 'land (find-package "ROSS")))
(unless (find-package "ROSS::LAND")
  (make-package "ROSS::LAND"))
(unless (find-package "ROSS::LANDREQUEST")
  (make-package "ROSS::LANDREQUEST"))
(unless (find-package "ROSS::LANDRESPONSE")
  (make-package "ROSS::LANDRESPONSE"))

(in-package "ROS")





(defclass ross::landRequest
  :super ros::object
  :slots (_confirm ))

(defmethod ross::landRequest
  (:init
   (&key
    ((:confirm __confirm) 0.0)
    )
   (send-super :init)
   (setq _confirm (float __confirm))
   self)
  (:confirm
   (&optional __confirm)
   (if __confirm (setq _confirm __confirm)) _confirm)
  (:serialization-length
   ()
   (+
    ;; float32 _confirm
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _confirm
       (sys::poke _confirm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _confirm
     (setq _confirm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ross::landResponse
  :super ros::object
  :slots (_LAND_DONE ))

(defmethod ross::landResponse
  (:init
   (&key
    ((:LAND_DONE __LAND_DONE) 0.0)
    )
   (send-super :init)
   (setq _LAND_DONE (float __LAND_DONE))
   self)
  (:LAND_DONE
   (&optional __LAND_DONE)
   (if __LAND_DONE (setq _LAND_DONE __LAND_DONE)) _LAND_DONE)
  (:serialization-length
   ()
   (+
    ;; float32 _LAND_DONE
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _LAND_DONE
       (sys::poke _LAND_DONE (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _LAND_DONE
     (setq _LAND_DONE (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ross::land
  :super ros::object
  :slots ())

(setf (get ross::land :md5sum-) "8418e6fd9e3883e9757a349fc01ca1f9")
(setf (get ross::land :datatype-) "ross/land")
(setf (get ross::land :request) ross::landRequest)
(setf (get ross::land :response) ross::landResponse)

(defmethod ross::landRequest
  (:response () (instance ross::landResponse :init)))

(setf (get ross::landRequest :md5sum-) "8418e6fd9e3883e9757a349fc01ca1f9")
(setf (get ross::landRequest :datatype-) "ross/landRequest")
(setf (get ross::landRequest :definition-)
      "float32 confirm
---
float32 LAND_DONE

")

(setf (get ross::landResponse :md5sum-) "8418e6fd9e3883e9757a349fc01ca1f9")
(setf (get ross::landResponse :datatype-) "ross/landResponse")
(setf (get ross::landResponse :definition-)
      "float32 confirm
---
float32 LAND_DONE

")



(provide :ross/land "8418e6fd9e3883e9757a349fc01ca1f9")


