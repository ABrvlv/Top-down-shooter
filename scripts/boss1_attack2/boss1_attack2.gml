function boss1_attack2() {
	attack_ready = false

	aim_angle = point_direction(x, y, oPlayer.x, oPlayer.y)
	image_angle = aim_angle
	if delay <= 0 {
		delay = room_speed * 1
		for (var i = -5; i <= 10; i += 1)
		{
			bullet = instance_create_layer(x + lengthdir_x(40, aim_angle),y + lengthdir_y(40, aim_angle),"Instances", oBullet_Enemy);
			bullet.direction = aim_angle+i*6	
		}
		n+=1
	}
	else delay -= 1
	if n > 4 {
		alarm_set(1, room_speed*4)
		state = 0
		sprite_index = sBoss1
	}



}
