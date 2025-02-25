function boss1_attack1() {
	attack_ready = false

	if delay <= 0 {
		delay = room_speed * 0.75
		for (var i = 0; i <= 63; i += 1)
		{
			bullet = instance_create_layer(x, y,"Instances", oBullet_Enemy);
			bullet.direction = i*360/64
		}
		n+=1
	}
	else delay -= 1
	if n > 1 {
		alarm_set(1, room_speed*4)
		state = 0
		sprite_index = sBoss1
	}





}
