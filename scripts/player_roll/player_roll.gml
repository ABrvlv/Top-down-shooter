function player_roll() {
	keyRoll = mouse_check_button_pressed(mb_right);

	if (keyRoll && sprite_index = sPlayer) {
		hSpeed = lengthdir_x(moveSpeed*2, movementDirection);
		vSpeed = lengthdir_y(moveSpeed*2, movementDirection);

		sprite_index = sPlayerRoll;
		image_index = 0;
		image_speed = 1;
		image_angle = point_direction(x, y, x+hSpeed, y+vSpeed);
		is_invincible = true;
	}

	if (sprite_index == sPlayerRoll && 4 > image_index) {
		if place_meeting(x+hSpeed, y+vSpeed, oWall) {
			while !place_meeting(x+sign(hSpeed),y+sign(vSpeed),oWall){
				x+=sign(hSpeed);
				y+=sign(vSpeed);
			}
			hSpeed = 0
			vSpeed = 0
		}
		x += hSpeed;
		y += vSpeed;
	}

	if (sprite_index == sPlayerRoll && image_index > 5) {
		if place_meeting(x+hSpeed, y+vSpeed, oWall) {
			while !place_meeting(x+sign(hSpeed),y+sign(vSpeed),oWall){
				x+=sign(hSpeed);
				y+=sign(vSpeed);
			}
			hSpeed = 0
			vSpeed = 0
		}
		x += hSpeed/2;
		y += vSpeed/2;
	
		is_invincible = false;
	}

	if sprite_index == sPlayerRoll && image_index > image_number - 1 {
		sprite_index = sPlayer;
		hSpeed = 0;
		vSpeed = 0;
	}
}
