function boss1_attack3() {
	attack_ready = false

	if delay <= 0 {
		delay = room_speed * 0.1
		for (var i = 0; i <= 15; i += 1)
		{
			bullet = instance_create_layer(x, y,"Instances", oBullet_Enemy);
			bullet.direction = i*360/15+irandom_range(-20,20)
		}
		n+=1
	}
	else delay -= 1
	if n > 5 {
		alarm_set(1, room_speed*4)
		state = 0
		sprite_index = sBoss1
	}
}
