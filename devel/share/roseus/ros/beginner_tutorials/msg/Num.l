;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::Num)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'Num (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::NUM")
  (make-package "BEGINNER_TUTORIALS::NUM"))

(in-package "ROS")
;;//! \htmlinclude Num.msg.html


(defclass beginner_tutorials::Num
  :super ros::object
  :slots (_centerX _centerY ))

(defmethod beginner_tutorials::Num
  (:init
   (&key
    ((:centerX __centerX) 0)
    ((:centerY __centerY) 0)
    )
   (send-super :init)
   (setq _centerX (round __centerX))
   (setq _centerY (round __centerY))
   self)
  (:centerX
   (&optional __centerX)
   (if __centerX (setq _centerX __centerX)) _centerX)
  (:centerY
   (&optional __centerY)
   (if __centerY (setq _centerY __centerY)) _centerY)
  (:serialization-length
   ()
   (+
    ;; int8 _centerX
    1
    ;; int8 _centerY
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _centerX
       (write-byte _centerX s)
     ;; int8 _centerY
       (write-byte _centerY s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _centerX
     (setq _centerX (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _centerX 127) (setq _centerX (- _centerX 256)))
   ;; int8 _centerY
     (setq _centerY (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _centerY 127) (setq _centerY (- _centerY 256)))
   ;;
   self)
  )

(setf (get beginner_tutorials::Num :md5sum-) "11a52276c7f1046a3434c96c7efb5602")
(setf (get beginner_tutorials::Num :datatype-) "beginner_tutorials/Num")
(setf (get beginner_tutorials::Num :definition-)
      "int8 centerX
int8 centerY

")



(provide :beginner_tutorials/Num "11a52276c7f1046a3434c96c7efb5602")


