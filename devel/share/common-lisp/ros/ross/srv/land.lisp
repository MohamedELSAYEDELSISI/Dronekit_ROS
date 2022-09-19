; Auto-generated. Do not edit!


(cl:in-package ross-srv)


;//! \htmlinclude land-request.msg.html

(cl:defclass <land-request> (roslisp-msg-protocol:ros-message)
  ((confirm
    :reader confirm
    :initarg :confirm
    :type cl:float
    :initform 0.0))
)

(cl:defclass land-request (<land-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <land-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'land-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ross-srv:<land-request> is deprecated: use ross-srv:land-request instead.")))

(cl:ensure-generic-function 'confirm-val :lambda-list '(m))
(cl:defmethod confirm-val ((m <land-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ross-srv:confirm-val is deprecated.  Use ross-srv:confirm instead.")
  (confirm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <land-request>) ostream)
  "Serializes a message object of type '<land-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confirm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <land-request>) istream)
  "Deserializes a message object of type '<land-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confirm) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<land-request>)))
  "Returns string type for a service object of type '<land-request>"
  "ross/landRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'land-request)))
  "Returns string type for a service object of type 'land-request"
  "ross/landRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<land-request>)))
  "Returns md5sum for a message object of type '<land-request>"
  "8418e6fd9e3883e9757a349fc01ca1f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'land-request)))
  "Returns md5sum for a message object of type 'land-request"
  "8418e6fd9e3883e9757a349fc01ca1f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<land-request>)))
  "Returns full string definition for message of type '<land-request>"
  (cl:format cl:nil "float32 confirm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'land-request)))
  "Returns full string definition for message of type 'land-request"
  (cl:format cl:nil "float32 confirm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <land-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <land-request>))
  "Converts a ROS message object to a list"
  (cl:list 'land-request
    (cl:cons ':confirm (confirm msg))
))
;//! \htmlinclude land-response.msg.html

(cl:defclass <land-response> (roslisp-msg-protocol:ros-message)
  ((LAND_DONE
    :reader LAND_DONE
    :initarg :LAND_DONE
    :type cl:float
    :initform 0.0))
)

(cl:defclass land-response (<land-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <land-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'land-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ross-srv:<land-response> is deprecated: use ross-srv:land-response instead.")))

(cl:ensure-generic-function 'LAND_DONE-val :lambda-list '(m))
(cl:defmethod LAND_DONE-val ((m <land-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ross-srv:LAND_DONE-val is deprecated.  Use ross-srv:LAND_DONE instead.")
  (LAND_DONE m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <land-response>) ostream)
  "Serializes a message object of type '<land-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'LAND_DONE))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <land-response>) istream)
  "Deserializes a message object of type '<land-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LAND_DONE) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<land-response>)))
  "Returns string type for a service object of type '<land-response>"
  "ross/landResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'land-response)))
  "Returns string type for a service object of type 'land-response"
  "ross/landResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<land-response>)))
  "Returns md5sum for a message object of type '<land-response>"
  "8418e6fd9e3883e9757a349fc01ca1f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'land-response)))
  "Returns md5sum for a message object of type 'land-response"
  "8418e6fd9e3883e9757a349fc01ca1f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<land-response>)))
  "Returns full string definition for message of type '<land-response>"
  (cl:format cl:nil "float32 LAND_DONE~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'land-response)))
  "Returns full string definition for message of type 'land-response"
  (cl:format cl:nil "float32 LAND_DONE~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <land-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <land-response>))
  "Converts a ROS message object to a list"
  (cl:list 'land-response
    (cl:cons ':LAND_DONE (LAND_DONE msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'land)))
  'land-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'land)))
  'land-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'land)))
  "Returns string type for a service object of type '<land>"
  "ross/land")