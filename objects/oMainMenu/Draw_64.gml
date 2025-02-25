draw_set_font(title_font);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_text(title_x, title_y, "Top-Down Shooter")
draw_set_font(Buff)
draw_text(gui_width*0.5, gui_height*0.8, "Controls:\nWASD - Move\nLMB - Shoot\nRMB - Dodge roll\nSpace - Use active item");
draw_set_font(-1)
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_button_ext(play_button);
draw_button_ext(exit_button);
