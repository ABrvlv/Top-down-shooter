// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function flash(){
	for (var i = 0; i <= 255; i += 1)
	{
		bullet = instance_create_layer(x, y,"Instances", oWave);
		bullet.direction = i*360/256
	}
	
	instance_destroy(self)
}
