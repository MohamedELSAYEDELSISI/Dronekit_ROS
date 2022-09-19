; Auto-generated. Do not edit!


(cl:in-package ross-srv)


;//! \htmlinclude RTL-request.msg.html

(cl:defclass <RTL-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RTL-request (<RTL-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RTL-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RTL-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ross-srv:<RTL-request> is deprecated: use ross-srv:RTL-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RTL-request>) ostream)
  "Serializes a message object of type '<RTL-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RTL-request>) istream)
  "Deserializes a message object of type '<RTL-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RTL-request>)))
  "Returns string type for a service object of type '<RTL-request>"
  "ross/RTLRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RTL-request)))
  "Returns string type for a service object of type 'RTL-request"
  "ross/RTLRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RTL-request>)))
  "Returns md5sum for a message object of type '<RTL-request>"
  "6c7b48717ccfef833a363078363def6f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RTL-request)))
  "Returns md5sum for a message object of type 'RTL-request"
  "6c7b48717ccfef833a363078363def6f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RTL-request>)))
  "Returns full string definition for message of type '<RTL-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RTL-request)))
  "Returns full string definition for message of type 'RTL-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RTL-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RTL-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RTL-request
))
;//! \htmlinclude RTL-response.msg.html

(cl:defclass <RTL-response> (roslisp-msg-protocol:ros-message)
  ((confirm_mode
    :reader confirm_mode
    :initarg :confirm_mode
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RTL-response (<RTL-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RTL-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RTL-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ross-srv:<RTL-response> is deprecated: use ross-srv:RTL-response instead.")))

(cl:ensure-generic-function 'confirm_mode-val :lambda-list '(m))
(cl:defmethod confirm_mode-val ((m <RTL-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ross-srv:confirm_mode-val is deprecated.  Use ross-srv:confirm_mode instead.")
  (confirm_mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RTL-response>) ostream)
  "Serializes a message object of type '<RTL-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'confirm_mode) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RTL-response>) istream)
  "Deserializes a message object of type '<RTL-response>"
    (cl:setf (cl:slot-value msg 'confirm_mode) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RTL-response>)))
  "Returns string type for a service object of type '<RTL-response>"
  "ross/RTLResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RTL-response)))
  "Returns string type for a service object of type 'RTL-response"
  "ross/RTLResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RTL-response>)))
  "Returns md5sum for a message object of type '<RTL-response>"
  "6c7b48717ccfef833a363078363def6f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RTL-response)))
  "Returns md5sum for a message object of type 'RTL-response"
  "6c7b48717ccfef833a363078363def6f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RTL-response>)))
  "Returns full string definition for message of type '<RTL-response>"
  (cl:format cl:nil "bool confirm_mode~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RTL-response)))
  "Returns full string definition for message of type 'RTL-response"
  (cl:format cl:nil "bool confirm_mode~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RTL-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RTL-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RTL-response
    (cl:cons ':confirm_mode (confirm_mode msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RTL)))
  'RTL-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RTL)))
  'RTL-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RTL)))
  "Returns string type for a service object of type '<RTL>"
  "ross/RTL")