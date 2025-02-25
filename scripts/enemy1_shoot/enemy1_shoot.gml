function enemy1_shoot() {
	var bullet_origin_x = x + lengthdir_x(40, movementDirection)
	var bullet_origin_y = y + lengthdir_y(40, movementDirection)

	var bullet = instance_create_layer(bullet_origin_x,bullet_origin_y,"Instances", oBullet_Enemy);
	
	with (bullet) {
		direction = other.movementDirection;
		image_angle = other.movementDirection;
	}
	ready_to_shoot = false;
	alarm_set(0, room_speed*0.5)
}
