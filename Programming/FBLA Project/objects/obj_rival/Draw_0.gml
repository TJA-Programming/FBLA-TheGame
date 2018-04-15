draw_self();

if (talking)//Open cutscene dialog
{
	draw_sprite(spr_textBox, 0, x, y-48);//Text box
	draw_set_halign(fa_center);
	draw_set_font(fn_talk);
	if (!waiting)
	{
		waiting = true;
		alarm[0] = waitTime;
	}
	if (openCutscene)
	{scr_openDia();}
	else if (slcCutscene)
	{scr_slcDia();}
}