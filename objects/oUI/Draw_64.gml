draw_healthbar(0, 0, 500, 30, health, c_black, c_red, c_lime, 0, true, true)
if (oPlayer.active == "inv")
	draw_text(20, 630, "Invincibility")
else if (oPlayer.active == "grenade")
	draw_text(20, 630, "Grenade")
if (oPlayer.alarm[2] != -1)
	draw_text(20, 650, oPlayer.alarm[2]/room_speed);
if oPlayer.finished == true 
	next_level()
if oPlayer.finished2 == true 
	last_level()	
