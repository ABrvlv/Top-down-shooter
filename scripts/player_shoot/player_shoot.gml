function player_shoot() {
	keyShoot = mouse_check_button(mb_left);

	if (keyShoot && sprite_index != sPlayerRoll && ready_to_shoot) {
		var bullet_origin_x = x + lengthdir_x(40, aim_angle)
		var bullet_origin_y = y + lengthdir_y(40, aim_angle)
		var bullet = instance_create_layer(bullet_origin_x,bullet_origin_y,"Instances", oBullet);
	
		with (bullet) {
			direction = other.aim_angle;
			image_angle = other.aim_angle;
		}
		ready_to_shoot = false;
		alarm_set(0, room_speed*rate_of_fire)
	}
}
