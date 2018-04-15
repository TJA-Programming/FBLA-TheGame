//Opening cutscene
if (openCutscene or slcCutscene)
{
	dir = -1;
	if (!place_meeting(x-32,y,obj_player))//Moves left and meets player
	{
		x -= spd;
	}
	else if (dia != DIALOG.FINISH)//Talks to player, introduces plot
	{
		talking = true;
	}
}

//Gravity
vsp += obj_player.grv;

//Vertical Collision
if (place_meeting(x, y + vsp, obj_wall))
{
	while (!place_meeting(x, y + 1, obj_wall))
	{
		y += 1;
	}
	vsp = 0;	
}
y += vsp;

//Random x movement
if (canMove and !slcCutscene)
{
	if (x-spd > newX)
	{
		dir = -1;
		x -= spd;
	}
	else if (x+spd < newX)
	{
		dir = 1;
		x += spd;
	}
	else
	{
		canMove = false;
		alarm[1] = random(4) * room_speed;
	}
}

//Directions
image_xscale = dir;