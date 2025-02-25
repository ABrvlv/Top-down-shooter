var xpos = (oPlayer.x + ((mouse_x - oPlayer.x) / 2)) - camera_get_view_width(camera) / 2;      
var ypos = (oPlayer.y + ((mouse_y - oPlayer.y) / 2)) - camera_get_view_height(camera) / 2;      
      
camera_set_view_pos(camera, xpos, ypos);  