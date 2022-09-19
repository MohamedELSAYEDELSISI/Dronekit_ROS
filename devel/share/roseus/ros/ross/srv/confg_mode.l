;; Auto-generated. Do not edit!


(when (boundp 'ross::confg_mode)
  (if (not (find-package "ROSS"))
    (make-package "ROSS"))
  (shadow 'confg_mode (find-package "ROSS")))
(unless (find-package "ROSS::CONFG_MODE")
  (make-package "ROSS::CONFG_MODE"))
(unless (find-package "ROSS::CONFG_MODEREQUEST")
  (make-package "ROSS::CONFG_MODEREQUEST"))
(unless (find-package "ROSS::CONFG_MODERESPONSE")
  (make-package "ROSS::CONFG_MODERESPONSE"))

(in-package "ROS")





(defclass ross::confg_modeRequest
  :super ros::object
  :slots (_mode ))

(defmethod ross::confg_modeRequest
  (:init
   (&key
    ((:mode __mode) "")
    )
   (send-super :init)
   (setq _mode (string __mode))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; string _mode
    4 (length _mode)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ross::confg_modeResponse
  :super ros::object
  :slots (_feedback ))

(defmethod ross::confg_modeResponse
  (:init
   (&key
    ((:feedback __feedback) nil)
    )
   (send-super :init)
   (setq _feedback __feedback)
   self)
  (:feedback
   (&optional (__feedback :null))
   (if (not (eq __feedback :null)) (setq _feedback __feedback)) _feedback)
  (:serialization-length
   ()
   (+
    ;; bool _feedback
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _feedback
       (if _feedback (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _feedback
     (setq _feedback (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ross::confg_mode
  :super ros::object
  :slots ())

(setf (get ross::confg_mode :md5sum-) "bccd39359c727acbf8e5cbae37fe0188")
(setf (get ross::confg_mode :datatype-) "ross/confg_mode")
(setf (get ross::confg_mode :request) ross::confg_modeRequest)
(setf (get ross::confg_mode :response) ross::confg_modeResponse)

(defmethod ross::confg_modeRequest
  (:response () (instance ross::confg_modeResponse :init)))

(setf (get ross::confg_modeRequest :md5sum-) "bccd39359c727acbf8e5cbae37fe0188")
(setf (get ross::confg_modeRequest :datatype-) "ross/confg_modeRequest")
(setf (get ross::confg_modeRequest :definition-)
      "string mode
---
bool feedback

")

(setf (get ross::confg_modeResponse :md5sum-) "bccd39359c727acbf8e5cbae37fe0188")
(setf (get ross::confg_modeResponse :datatype-) "ross/confg_modeResponse")
(setf (get ross::confg_modeResponse :definition-)
      "string mode
---
bool feedback

")



(provide :ross/confg_mode "bccd39359c727acbf8e5cbae37fe0188")


