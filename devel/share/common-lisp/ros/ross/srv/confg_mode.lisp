; Auto-generated. Do not edit!


(cl:in-package ross-srv)


;//! \htmlinclude confg_mode-request.msg.html

(cl:defclass <confg_mode-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:string
    :initform ""))
)

(cl:defclass confg_mode-request (<confg_mode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <confg_mode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'confg_mode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ross-srv:<confg_mode-request> is deprecated: use ross-srv:confg_mode-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <confg_mode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ross-srv:mode-val is deprecated.  Use ross-srv:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <confg_mode-request>) ostream)
  "Serializes a message object of type '<confg_mode-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <confg_mode-request>) istream)
  "Deserializes a message object of type '<confg_mode-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<confg_mode-request>)))
  "Returns string type for a service object of type '<confg_mode-request>"
  "ross/confg_modeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'confg_mode-request)))
  "Returns string type for a service object of type 'confg_mode-request"
  "ross/confg_modeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<confg_mode-request>)))
  "Returns md5sum for a message object of type '<confg_mode-request>"
  "bccd39359c727acbf8e5cbae37fe0188")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'confg_mode-request)))
  "Returns md5sum for a message object of type 'confg_mode-request"
  "bccd39359c727acbf8e5cbae37fe0188")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<confg_mode-request>)))
  "Returns full string definition for message of type '<confg_mode-request>"
  (cl:format cl:nil "string mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'confg_mode-request)))
  "Returns full string definition for message of type 'confg_mode-request"
  (cl:format cl:nil "string mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <confg_mode-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mode))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <confg_mode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'confg_mode-request
    (cl:cons ':mode (mode msg))
))
;//! \htmlinclude confg_mode-response.msg.html

(cl:defclass <confg_mode-response> (roslisp-msg-protocol:ros-message)
  ((feedback
    :reader feedback
    :initarg :feedback
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass confg_mode-response (<confg_mode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <confg_mode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'confg_mode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ross-srv:<confg_mode-response> is deprecated: use ross-srv:confg_mode-response instead.")))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <confg_mode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ross-srv:feedback-val is deprecated.  Use ross-srv:feedback instead.")
  (feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <confg_mode-response>) ostream)
  "Serializes a message object of type '<confg_mode-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'feedback) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <confg_mode-response>) istream)
  "Deserializes a message object of type '<confg_mode-response>"
    (cl:setf (cl:slot-value msg 'feedback) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<confg_mode-response>)))
  "Returns string type for a service object of type '<confg_mode-response>"
  "ross/confg_modeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'confg_mode-response)))
  "Returns string type for a service object of type 'confg_mode-response"
  "ross/confg_modeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<confg_mode-response>)))
  "Returns md5sum for a message object of type '<confg_mode-response>"
  "bccd39359c727acbf8e5cbae37fe0188")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'confg_mode-response)))
  "Returns md5sum for a message object of type 'confg_mode-response"
  "bccd39359c727acbf8e5cbae37fe0188")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<confg_mode-response>)))
  "Returns full string definition for message of type '<confg_mode-response>"
  (cl:format cl:nil "bool feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'confg_mode-response)))
  "Returns full string definition for message of type 'confg_mode-response"
  (cl:format cl:nil "bool feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <confg_mode-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <confg_mode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'confg_mode-response
    (cl:cons ':feedback (feedback msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'confg_mode)))
  'confg_mode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'confg_mode)))
  'confg_mode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'confg_mode)))
  "Returns string type for a service object of type '<confg_mode>"
  "ross/confg_mode")