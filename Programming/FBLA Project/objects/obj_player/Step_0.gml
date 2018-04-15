	//Checks Input\\
//Player is immoble while in cutscene
if (room=rm_tutorial or (!openCutscene and !slcCutscene))
{
	leftPressed = keyboard_check(leftButton);
	rightPressed = keyboard_check(rightButton);
	jumpPressed = keyboard_check_pressed(jumpButton);
}
if (!room=rm_tutorial and slcCutscene)
{
	obj_player.spd = 0;	
}

	//Movement Calculations\\
var move = rightPressed - leftPressed;//Determines movement direction
hsp = move * walkspeed;
vsp += grv;
//Jumping
if (place_meeting(x, y + 1, obj_wall) and jumpPressed)
{
	vsp = -jumpHeight;
}

	//Collision\\
//If about to run into wall, moves player until aligned with wall
//Horizontal
if (place_meeting(x + hsp, y, obj_wall))
{
	while (!place_meeting(x + sign(hsp), y, obj_wall))
	{
		x += sign(hsp);
	}
	hsp = 0;	
}
//Vertical
if (place_meeting(x, y + vsp, obj_wall))
{
	while (!place_meeting(x, y + sign(vsp), obj_wall))
	{
		y += sign(vsp);
	}
	vsp = 0;	
}

	//Movement Application\\
if (!slcCutscene)
{
	x += hsp;
}
y += vsp;

if (hsp != 0)
{
	image_xscale = sign(hsp);
}

//Failsafe for rare case of player getting stuck in ceiling
if (place_meeting(x, y, obj_wall))
{
	y += 1;
}