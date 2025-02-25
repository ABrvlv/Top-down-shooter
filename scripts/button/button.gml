function Button(_x, _y, _width, _height, _text, action) constructor
{
	X = _x;
	Y = _y;
	width = _width;
	height = _height;
	text = _text;
	hover_progress = 0;
	_script = action;
	_argument = false;
	locked = false
	
	function get_hover()
	{
		var _mouse_x = device_mouse_x_to_gui(0);
		var _mouse_y = device_mouse_y_to_gui(0);
		
		return point_in_rectangle(_mouse_x, _mouse_y, X, Y, X+width, Y+height) and !locked
	}
}

function draw_button_ext(button)
{
	button.hover_progress = lerp(button.hover_progress, button.get_hover(), 0.1);
	
	if button.locked
		draw_set_color(c_grey);
	else
		draw_set_color(merge_color(c_ltgray,c_white, button.hover_progress));
	
	draw_roundrect(button.X, button.Y, button.X +button.width, button.Y + button.height, false);
	
	draw_set_color(c_black);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_text(button.X+button.width/2, button.Y+button.height/2, button.text);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_set_color(c_white);
	
	var is_clicked = button.get_hover() and mouse_check_button_pressed(mb_left);
	var button_activated = is_clicked and button._script >= 0;
	if (button_activated)
		if (button._argument != false)
			script_execute(button._script, button._argument);
		else
			script_execute(button._script);
			
	return button_activated;
}