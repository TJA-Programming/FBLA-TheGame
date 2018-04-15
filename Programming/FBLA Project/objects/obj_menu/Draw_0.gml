//Setup
draw_set_font(fn_menuTitle);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//Title
draw_text(titleX, titleY,"FBLA: The Game");

//Menu Options
for (i = 0; i < array_length_1d(options); i++)
{
	draw_set_halign(fa_left);
	draw_text(optionsX, titleY+(32*(i+2)), options[i]);
}

//Selector
draw_sprite(spr_selector,0,optionsX-12,titleY+(32*(pos+2)));

//Reset
draw_set_valign(fa_top);

//Version
draw_set_font(fn_menu);
draw_text(room_width-180,room_height-32,"Verson " + version);