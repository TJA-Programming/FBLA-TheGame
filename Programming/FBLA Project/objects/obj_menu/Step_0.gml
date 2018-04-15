//Input
pos -= max(keyboard_check_pressed(ord("W")),keyboard_check_pressed(vk_up),0);
pos += max(keyboard_check_pressed(ord("S")),keyboard_check_pressed(vk_down),0);
pushed = max(keyboard_check_released(vk_enter),keyboard_check_released(vk_space),0);

//Calculations
if (pos < 0)
{pos = array_length_1d(options) - 1;}
else if (pos >= array_length_1d(options))
{pos = 0;}
if (pushed)//Decides what to do when enter or space is pushed
{
	switch (pos)
	{
		case 0://New Game
			room_goto(rm_difficulty);
			break;
		case 1://How to Play
			room_goto(rm_tutorial);
			break;
		case 2://Credits
			room_goto(rm_credits);
			break;
		case 3://Quit
			game_end();
			break;
	}
}
