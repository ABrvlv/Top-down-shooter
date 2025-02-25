function enemy2_state_free() {
	movementDirection = point_direction(x, y, oPlayer.x, oPlayer.y);

	hSpeed = lengthdir_x(moveSpeed, movementDirection)
	vSpeed = lengthdir_y(moveSpeed, movementDirection)

	x += hSpeed;
	y += vSpeed;
	
	image_angle = movementDirection;

	if (ready_to_shoot) enemy2_shoot();

	if (attack_ready == true) {
		sprite_index = sBoss2attack
		alarm_set(2, room_speed*1) 
		state = 10;
	}






}
