# Структура топика с моими данными получаемыми с нижнего уровня Control
#	uint32_t speed;		   // =0..100 положение слайдера
#	uint32_t radius;	   // =0..100 положение слайдера
#	uint32_t napravl;	   // =0 если переключатель в положении A, =1 если в положении B, =2 если в положении C, ...
#	uint32_t startStop;	   // =0 если переключатель в положении A, =1 если в положении B, =2 если в положении C, ...
#	uint32_t connect_flag; // =1 if wire connected, else =0

    uint32 speed
	uint32 radius
	uint32 napravl
	uint32 startStop
	uint32 connect_flag