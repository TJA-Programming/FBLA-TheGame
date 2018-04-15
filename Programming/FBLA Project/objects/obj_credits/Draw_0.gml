//Displays credits for game
draw_set_font(fn_menuTitle);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_text(room_width/2, room_height/2-128,"Credits");
draw_set_font(fn_menu);
draw_text(room_width/2, room_height/2-32,"Programming");
draw_text(room_width/2, room_height/2,"Avery Taylor");
draw_text(room_width/2, room_height/2+64,"Designing");
draw_text(room_width/2, room_height/2+96,"Tanner Kalinowski");
draw_text(room_width/2, room_height/2+128,"Jack Mettin");

//Return
draw_set_halign(fa_left);
draw_text(room_width-400, room_height-64, "Press Enter to return to menu");