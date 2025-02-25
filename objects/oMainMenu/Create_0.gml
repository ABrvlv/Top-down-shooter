gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

title_x = gui_width*0.5
title_y = gui_height*0.05
title_font = arial_20

button_width = 280;
button_height = 80;
button_span = 20;
button_offset = button_height+button_span;
button_x = gui_width * 0.5 - button_width/2;
button_y = gui_height * 0.5 - button_height - button_span / 2;

var _x = button_x;
var _y = button_y;
play_button = new Button (_x, _y, button_width, button_height, "Play", start_game);
_y += button_offset;
exit_button = new Button (_x, _y, button_width, button_height, "Exit", exit_game);

