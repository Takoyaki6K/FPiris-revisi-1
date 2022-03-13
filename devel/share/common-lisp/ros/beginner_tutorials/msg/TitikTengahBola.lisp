; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-msg)


;//! \htmlinclude TitikTengahBola.msg.html

(cl:defclass <TitikTengahBola> (roslisp-msg-protocol:ros-message)
  ((centerX
    :reader centerX
    :initarg :centerX
    :type cl:fixnum
    :initform 0)
   (centerY
    :reader centerY
    :initarg :centerY
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TitikTengahBola (<TitikTengahBola>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TitikTengahBola>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TitikTengahBola)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-msg:<TitikTengahBola> is deprecated: use beginner_tutorials-msg:TitikTengahBola instead.")))

(cl:ensure-generic-function 'centerX-val :lambda-list '(m))
(cl:defmethod centerX-val ((m <TitikTengahBola>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:centerX-val is deprecated.  Use beginner_tutorials-msg:centerX instead.")
  (centerX m))

(cl:ensure-generic-function 'centerY-val :lambda-list '(m))
(cl:defmethod centerY-val ((m <TitikTengahBola>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:centerY-val is deprecated.  Use beginner_tutorials-msg:centerY instead.")
  (centerY m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TitikTengahBola>) ostream)
  "Serializes a message object of type '<TitikTengahBola>"
  (cl:let* ((signed (cl:slot-value msg 'centerX)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'centerY)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TitikTengahBola>) istream)
  "Deserializes a message object of type '<TitikTengahBola>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'centerX) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'centerY) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TitikTengahBola>)))
  "Returns string type for a message object of type '<TitikTengahBola>"
  "beginner_tutorials/TitikTengahBola")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TitikTengahBola)))
  "Returns string type for a message object of type 'TitikTengahBola"
  "beginner_tutorials/TitikTengahBola")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TitikTengahBola>)))
  "Returns md5sum for a message object of type '<TitikTengahBola>"
  "cc2e74fce2d0b019ce044dd5a8d4fd1d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TitikTengahBola)))
  "Returns md5sum for a message object of type 'TitikTengahBola"
  "cc2e74fce2d0b019ce044dd5a8d4fd1d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TitikTengahBola>)))
  "Returns full string definition for message of type '<TitikTengahBola>"
  (cl:format cl:nil "int16 centerX~%int16 centerY~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TitikTengahBola)))
  "Returns full string definition for message of type 'TitikTengahBola"
  (cl:format cl:nil "int16 centerX~%int16 centerY~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TitikTengahBola>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TitikTengahBola>))
  "Converts a ROS message object to a list"
  (cl:list 'TitikTengahBola
    (cl:cons ':centerX (centerX msg))
    (cl:cons ':centerY (centerY msg))
))
