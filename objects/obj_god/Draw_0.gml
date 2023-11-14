
draw_text(0,0,"TOP LEFT");
draw_set_halign(fa_right);
draw_text(room_width,0,"TOP RIGHT");
draw_set_valign(fa_bottom);
draw_text(room_width,room_height-16,"BOTTOM RIGHT");
draw_set_halign(fa_left);
draw_text(0,room_height-16,"BOTTOM LEFT");
draw_set_valign(fa_top);


var mx = (clamp(mouse_x,0,room_width) div 16) * 16;
var my = (clamp(mouse_y,0,room_height) div 16) * 16;
draw_sprite(spr_draw,0,mx,my);