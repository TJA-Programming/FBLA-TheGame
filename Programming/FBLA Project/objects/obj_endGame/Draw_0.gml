draw_set_font(fn_question);
draw_set_color(c_black);
draw_set_halign(fa_center);
//Win event
if (win)
{
	draw_text(room_width/2, room_height/2-50,"Congrats on beating the school record and making it to nationals!");
}

//Lose event
if (!win)
{
	draw_text(room_width/2, room_height/2-50,"You have failed to beat the school record and make it to nationals,");
	draw_text(room_width/2, room_height/2,"fell free to try again next year");
}

//Restart
draw_text(room_width/2, room_height/2 + 100,"Press R to restart");