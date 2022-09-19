;; Auto-generated. Do not edit!


(when (boundp 'ross::RTL)
  (if (not (find-package "ROSS"))
    (make-package "ROSS"))
  (shadow 'RTL (find-package "ROSS")))
(unless (find-package "ROSS::RTL")
  (make-package "ROSS::RTL"))
(unless (find-package "ROSS::RTLREQUEST")
  (make-package "ROSS::RTLREQUEST"))
(unless (find-package "ROSS::RTLRESPONSE")
  (make-package "ROSS::RTLRESPONSE"))

(in-package "ROS")





(defclass ross::RTLRequest
  :super ros::object
  :slots ())

(defmethod ross::RTLRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass ross::RTLResponse
  :super ros::object
  :slots (_confirm_mode ))

(defmethod ross::RTLResponse
  (:init
   (&key
    ((:confirm_mode __confirm_mode) nil)
    )
   (send-super :init)
   (setq _confirm_mode __confirm_mode)
   self)
  (:confirm_mode
   (&optional (__confirm_mode :null))
   (if (not (eq __confirm_mode :null)) (setq _confirm_mode __confirm_mode)) _confirm_mode)
  (:serialization-length
   ()
   (+
    ;; bool _confirm_mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _confirm_mode
       (if _confirm_mode (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _confirm_mode
     (setq _confirm_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ross::RTL
  :super ros::object
  :slots ())

(setf (get ross::RTL :md5sum-) "6c7b48717ccfef833a363078363def6f")
(setf (get ross::RTL :datatype-) "ross/RTL")
(setf (get ross::RTL :request) ross::RTLRequest)
(setf (get ross::RTL :response) ross::RTLResponse)

(defmethod ross::RTLRequest
  (:response () (instance ross::RTLResponse :init)))

(setf (get ross::RTLRequest :md5sum-) "6c7b48717ccfef833a363078363def6f")
(setf (get ross::RTLRequest :datatype-) "ross/RTLRequest")
(setf (get ross::RTLRequest :definition-)
      "
---
bool confirm_mode

")

(setf (get ross::RTLResponse :md5sum-) "6c7b48717ccfef833a363078363def6f")
(setf (get ross::RTLResponse :datatype-) "ross/RTLResponse")
(setf (get ross::RTLResponse :definition-)
      "
---
bool confirm_mode

")



(provide :ross/RTL "6c7b48717ccfef833a363078363def6f")


