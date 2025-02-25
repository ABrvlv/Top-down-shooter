keyUp = keyboard_check(ord("W"));
keyLeft = keyboard_check(ord("A"));
keyDown = keyboard_check(ord("S"));
keyRight = keyboard_check(ord("D"));

movementInput = (keyRight - keyLeft != 0) or (keyDown - keyUp != 0);

if (sprite_index != sPlayerRoll){
if (movementInput) {
	image_speed = 1;
	movementDirection = point_direction(0, 0, keyRight - keyLeft, keyDown - keyUp);
	hSpeed = lengthdir_x(moveSpeed, movementDirection);
	vSpeed = lengthdir_y(moveSpeed, movementDirection);
	
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
} else image_speed = 0;
}

if (sprite_index!=sPlayerRoll) {
	aim_angle = point_direction(x,y, mouse_x, mouse_y);
	image_angle = aim_angle;
}

player_shoot();

player_roll();

player_active()

if finished == true && keyboard_check(ord("T")) {
	room_goto(rRoom2); 
	x = 1560;
	y = 1210
	finished = false;
}

if finished2 == true && keyboard_check(ord("T")) {
	game_restart()
}


if (health <= 0) game_restart();