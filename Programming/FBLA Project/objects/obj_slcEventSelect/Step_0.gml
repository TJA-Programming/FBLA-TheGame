//Input
pos -= max(keyboard_check_pressed(ord("W")),keyboard_check_pressed(vk_up),0);
pos += max(keyboard_check_pressed(ord("S")),keyboard_check_pressed(vk_down),0);
pushed = max(keyboard_check_pressed(vk_enter),keyboard_check_pressed(vk_space),0);

//Calculations
if (pos < 0)
{pos = array_length_1d(options) - 1;}
else if (pos >= array_length_1d(options))
{pos = 0;}
if (pushed)//Decides what to do when enter or space is pushed
{
	event = pos;
	room_goto(rm_slc);
}
