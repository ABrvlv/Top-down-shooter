function boss2_attack3() {
	attack_ready = false
	
	aim_angle = point_direction(x, y, oPlayer.x, oPlayer.y)
	image_angle = aim_angle
	if delay <= 0 {
		delay = room_speed * 0.75
		
		bullet = instance_create_layer(x, y,"Instances", oBigBullet);
		bullet.direction = aim_angle
		n+=1
	}
	else delay -= 1
	if n > 0 {
		alarm_set(1, room_speed*4)
		state = 0
		sprite_index = sBoss2
	}





}
