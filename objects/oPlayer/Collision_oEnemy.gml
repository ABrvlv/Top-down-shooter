if (is_invincible != true && sprite_index != sPlayerRoll) {
	sprite_index = sPlayerInv
	health -= 20;
	is_invincible = true
	alarm_set(1, room_speed*1)
}