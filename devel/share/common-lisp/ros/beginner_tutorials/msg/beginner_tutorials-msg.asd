
(cl:in-package :asdf)

(defsystem "beginner_tutorials-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "DataPckeMotor" :depends-on ("_package_DataPckeMotor"))
    (:file "_package_DataPckeMotor" :depends-on ("_package"))
    (:file "TitikTengahBola" :depends-on ("_package_TitikTengahBola"))
    (:file "_package_TitikTengahBola" :depends-on ("_package"))
  ))