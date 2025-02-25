function player_active() {
	if active != false && active_cooldown == 0 && keyboard_check(vk_space){
		if (active == "inv" && is_invincible == false) {
			active_cooldown = true
			is_invincible = true
			sprite_index = sPlayerInv
			alarm_set(1, room_speed*5)
			alarm_set(2, room_speed*30)
		}
		else if (active == "grenade") {
			active_cooldown = true
			var bullet_origin_x = x + lengthdir_x(40, aim_angle)
			var bullet_origin_y = y + lengthdir_y(40, aim_angle)
			var bullet = instance_create_layer(bullet_origin_x,bullet_origin_y,"Instances", oGrenade);
	
			with (bullet) {
				direction = other.aim_angle;
				image_angle = other.aim_angle;
			}
			
			alarm_set(2, room_speed*15)
		}
	}
}
