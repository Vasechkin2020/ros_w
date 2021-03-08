;; Auto-generated. Do not edit!


(when (boundp 'my_msgs::HL_to_Control)
  (if (not (find-package "MY_MSGS"))
    (make-package "MY_MSGS"))
  (shadow 'HL_to_Control (find-package "MY_MSGS")))
(unless (find-package "MY_MSGS::HL_TO_CONTROL")
  (make-package "MY_MSGS::HL_TO_CONTROL"))

(in-package "ROS")
;;//! \htmlinclude HL_to_Control.msg.html


(defclass my_msgs::HL_to_Control
  :super ros::object
  :slots ())

(defmethod my_msgs::HL_to_Control
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

(setf (get my_msgs::HL_to_Control :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get my_msgs::HL_to_Control :datatype-) "my_msgs/HL_to_Control")
(setf (get my_msgs::HL_to_Control :definition-)
      "#  Формат топика в который выводим все что верхний уровень посылает в блок Control

")



(provide :my_msgs/HL_to_Control "d41d8cd98f00b204e9800998ecf8427e")


