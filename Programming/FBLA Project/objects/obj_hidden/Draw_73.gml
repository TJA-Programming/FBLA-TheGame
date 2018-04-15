//If in main areas
if (room==rm_fblaHQ or room==rm_fundraising or room==rm_commService or room==rm_competing or room=rm_slc or room=rm_slcChooseEvent)
{
	//Score and Money
	scr_gui("Score: " + string(pScore), obj_leftColumn);
	scr_gui("$" + string(pMoney), obj_rightColumn);
	
	//Calendar
	draw_set_halign(fa_center);
	draw_set_font(fn_score);
	draw_set_color(c_black);
	draw_text(room_width-128, room_height-64, monthN[month] + " " + string(day));
	
	//School record
	draw_text(128, room_height-64, "Record: " + string(rScore));
}
