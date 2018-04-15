//Ends game
if (question >= 3)
{
	if (pScore >= rScore)
	{win = true;}
	else
	{win = false;}
	room_goto(rm_endGame);
}

//Displays questions
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_font(fn_menuTitle);

//Question
draw_text(room_width/2, room_height/2-200, "Question " + string(question+1) + ":");
draw_set_font(fn_menu);
switch (event)
{
	case 0://Accounting
		draw_text(room_width/2, room_height/2-150, accQ[question]);
		break;
	case 1://Intro FBLA
		draw_text(room_width/2, room_height/2-150, fblaQ[question]);
		break;
	case 2://Financial Math
		draw_text(room_width/2, room_height/2-150, finQ[question]);
		break;
}

//Answer Choices
draw_set_halign(fa_left);
for (i = 0; i <= 2; i++;)
{
	switch (event)
	{
		case 0://Accounting
			draw_text(room_width/2-250, room_height/2+i*answerOffset, string(i+1) + ") " + accA[question,i]);
			break;
		case 1://Intro FBLA
			draw_text(room_width/2-250, room_height/2+i*answerOffset, string(i+1) + ") " + fblaA[question,i]);
			break;
		case 2://Financial Math
			draw_text(room_width/2-250, room_height/2+i*answerOffset, string(i+1) + ") " + finA[question,i]);
			break;
	}
}