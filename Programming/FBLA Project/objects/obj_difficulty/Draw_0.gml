draw_set_font(fn_menuTitle);
draw_set_halign(fa_center);
draw_set_color(c_black);
draw_text(room_width/2,room_height/2-200,"Difficulty");
draw_set_font(fn_menu);
draw_text(room_width/2,room_height/2,"Use arrow keys to select");
draw_text(room_width/2,room_height/2+40,"Press Enter to continue");

switch (d)//Displays color for difficulty (easy-green, medium-orange, hard-red)
{
	case 0:
		draw_set_color(c_green);
		break;
	case 1:
		draw_set_color(c_orange);
		break;
	case 2:
		draw_set_color(c_red);
		break;
}
draw_text(room_width/2,room_height/2+150,difficulty[d]);
draw_sprite(spr_difficultySlider,d,room_width/2,room_height/2+200);