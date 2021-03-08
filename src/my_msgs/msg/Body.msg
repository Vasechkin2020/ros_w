# Структура топика с моими данными получаемыми с нижнего уровня Body
#	Struct_XYZ bno055;	   //Данные с датчика BNO055
#	Struct_BMP280 bmp280;  //Данные с датчика BMP280
#	float radius = 0; //Радиус по которому едем
#	float speed = 0;  // Заданная скорость	с которой едет тело
#	float odom = 0;	  //Пройденный телом путь
#	int32_t napravlen = 0; // Напрвление 1 по часовой или -1 против часовой, 0- по прямой
#	uint32_t distance_Lazer = 0;
#	float distance_UZI = 0;

Xyz  bno055
Climat  bme280
float32 radius
float32 speed
float32 odom
int32 napravlen
float32 distance_lazer
float32 distance_uzi


