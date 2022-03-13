;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::TitikTengahBola)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'TitikTengahBola (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::TITIKTENGAHBOLA")
  (make-package "BEGINNER_TUTORIALS::TITIKTENGAHBOLA"))

(in-package "ROS")
;;//! \htmlinclude TitikTengahBola.msg.html


(defclass beginner_tutorials::TitikTengahBola
  :super ros::object
  :slots (_centerX _centerY ))

(defmethod beginner_tutorials::TitikTengahBola
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
    ;; int16 _centerX
    2
    ;; int16 _centerY
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _centerX
       (write-word _centerX s)
     ;; int16 _centerY
       (write-word _centerY s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _centerX
     (setq _centerX (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _centerY
     (setq _centerY (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get beginner_tutorials::TitikTengahBola :md5sum-) "cc2e74fce2d0b019ce044dd5a8d4fd1d")
(setf (get beginner_tutorials::TitikTengahBola :datatype-) "beginner_tutorials/TitikTengahBola")
(setf (get beginner_tutorials::TitikTengahBola :definition-)
      "int16 centerX
int16 centerY

")



(provide :beginner_tutorials/TitikTengahBola "cc2e74fce2d0b019ce044dd5a8d4fd1d")


