;; Auto-generated. Do not edit!


(when (boundp 'my_msgs::HL_to_Body)
  (if (not (find-package "MY_MSGS"))
    (make-package "MY_MSGS"))
  (shadow 'HL_to_Body (find-package "MY_MSGS")))
(unless (find-package "MY_MSGS::HL_TO_BODY")
  (make-package "MY_MSGS::HL_TO_BODY"))

(in-package "ROS")
;;//! \htmlinclude HL_to_Body.msg.html


(defclass my_msgs::HL_to_Body
  :super ros::object
  :slots (_id _time _napravlenie _command _speed _radius _way ))

(defmethod my_msgs::HL_to_Body
  (:init
   (&key
    ((:id __id) 0)
    ((:time __time) 0)
    ((:napravlenie __napravlenie) 0)
    ((:command __command) 0)
    ((:speed __speed) 0.0)
    ((:radius __radius) 0.0)
    ((:way __way) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _time (round __time))
   (setq _napravlenie (round __napravlenie))
   (setq _command (round __command))
   (setq _speed (float __speed))
   (setq _radius (float __radius))
   (setq _way (float __way))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:napravlenie
   (&optional __napravlenie)
   (if __napravlenie (setq _napravlenie __napravlenie)) _napravlenie)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:way
   (&optional __way)
   (if __way (setq _way __way)) _way)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; uint32 _time
    4
    ;; int32 _napravlenie
    4
    ;; int32 _command
    4
    ;; float32 _speed
    4
    ;; float32 _radius
    4
    ;; float32 _way
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; uint32 _time
       (write-long _time s)
     ;; int32 _napravlenie
       (write-long _napravlenie s)
     ;; int32 _command
       (write-long _command s)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _way
       (sys::poke _way (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _time
     (setq _time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _napravlenie
     (setq _napravlenie (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _command
     (setq _command (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _radius
     (setq _radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _way
     (setq _way (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get my_msgs::HL_to_Body :md5sum-) "0bd2918d8c2b4abd6fc00f2e6b7c48a8")
(setf (get my_msgs::HL_to_Body :datatype-) "my_msgs/HL_to_Body")
(setf (get my_msgs::HL_to_Body :definition-)
      "#  Формат топика в который выводим все что верхний уровень посылает в блок Body
#	uint32_t id = 0; // Номер команды по порядку
#	uint32_t time = 0; // Время в течении которого нужно двигаться
#	int32_t napravlenie = 0;
#	int32_t command = 0; // Команда для выполнения
#	float speed = 0;	 // Скорость которую нужно установить
#	float radius = 0;	 // Радиус по которому нужно двигаться
#	float way = 0;		 // Путь который нужно проехать

	uint32 id
	uint32 time
	int32 napravlenie 
	int32 command 
	float32 speed 
	float32 radius 
	float32 way
")



(provide :my_msgs/HL_to_Body "0bd2918d8c2b4abd6fc00f2e6b7c48a8")


