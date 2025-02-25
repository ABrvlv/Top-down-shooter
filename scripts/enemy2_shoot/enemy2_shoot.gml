function enemy2_shoot() {
	var bullet_origin_x = x + lengthdir_x(40, movementDirection)
	var bullet_origin_y = y + lengthdir_y(40, movementDirection)

	for (i = -2; i < 3; i++){
		var bullet = instance_create_layer(bullet_origin_x,bullet_origin_y,"Instances", oBullet_Enemy);
		bullet.direction = movementDirection+i*5;
	}
	
	ready_to_shoot = false;
	alarm_set(0, room_speed*0.5)

}
