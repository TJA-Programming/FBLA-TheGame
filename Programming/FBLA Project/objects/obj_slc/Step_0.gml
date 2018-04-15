//Input
one = keyboard_check_pressed(ord("1"));
two = keyboard_check_pressed(ord("2"))*2;//Multiplied for ease of data manipulation
three = keyboard_check_pressed(ord("3"))*3;
numb = max(one,two,three)-1;//Subtract 1 in order to fit inside array parameters

//Switch loop for the event player is doing
if (numb != -1)
{
	switch (event)
	{
		case 0://Accounting
			if (accCA[question] == numb)
			{pScore += 250;}
			break;
		case 1://Intro FBLA
			if (fblaCA[question] == numb)
			{pScore += 250;}
			break;
		case 2://Financial Math
			if (finCA[question] == numb)
			{pScore += 250;}
			break;
	}
	question += 1;
}

//Ends game
if (question >= 3)
{
	if (pScore >= rScore)
	{win = true;}
	else
	{win = false;}
	room_goto(rm_endGame);
}