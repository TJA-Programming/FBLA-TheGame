draw_self();

//Displays info box above door
if (place_meeting(x, y, obj_player))
{
	draw_sprite(spr_doorInfo, 0, x, y);
	draw_set_halign(fa_center);
	draw_set_font(fn_doorInfo);
	draw_set_color(c_black);
	switch (doorType)
	{
		case DOOR.SERVICE:
			draw_text(x, y-62,"Service");
			draw_text(x, y-42,"Projects");
			break;
		case DOOR.FUNDRAISING:
			draw_text(x, y-62,"Fundraising");
			draw_text(x, y-42,"Projects");
			break;
		case DOOR.COMPETING:
			draw_text(x, y-52,"Competitions");
			break;
		case DOOR.CLEANUP:
			draw_text(x, y-62,"Roadside");
			draw_text(x, y-42,"Cleanup");
			break;
		case DOOR.SOUP:
			draw_text(x, y-52,"Soup Drive");
			break;
		case DOOR.PARCOUR:
			draw_text(x, y-62,"Pacour Test");
			if (obj_hidden.affordComp)//Displays red if insuffecient funds, green otherwise
			{draw_set_color(c_green);}
			else
			{draw_set_color(c_maroon);}
			draw_text(x,y-42,"$" + string(obj_hidden.compPrice));
			draw_set_color(c_black);
			break;
		case DOOR.PARCOUR_FINISH:
			draw_text(x, y-52,"Finish");
			break;
		case DOOR.FBLA:
			draw_text(x, y-62,"Return to");
			draw_text(x, y-42,"FBLA Room");
			break;
		case DOOR.TUTORIAL:
			draw_text(x, y-52,"Exit Tutorial");
	}
}