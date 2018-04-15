//Waits for player to pick up can, then gives a random one
if (place_meeting(obj_player.x, obj_player.y, obj_stove) and keyboard_check_pressed(useButton) and !holdingCan)
{
	holdingCan = true;
	canType = irandom_range(1,3);
	can = instance_create_layer(x, y, "Can", obj_can);
	with (can)//Gives can its color
	{
		switch (other.canType)
		{
			case 1:
				canCol = CAN.RED;
				sprite_index = spr_redCan;
				break;
			case 2:
				canCol = CAN.ORANGE;
				sprite_index = spr_orangeCan;
				break;
			case 3:
				canCol = CAN.BLUE;
				sprite_index = spr_blueCan;
				break;
		}
	}
}

//Waits for player to place can in correct box
if (keyboard_check_pressed(useButton) and (place_meeting(obj_player.x, obj_player.y, obj_box)) and holdingCan)
{
	correctBox = scr_correctBox(can, instance_nearest(obj_player.x, obj_player.y, obj_box));
	if (correctBox)
	{
		holdingCan = false;
		with (can)
		{
			instance_destroy();
		}
		gameMoney += canWorth;
	}
}

//Ends the game after 60 seconds
if (gameTime == 0)
{
	pMoney += gameMoney;
	obj_hidden.day += meetingInterval;
	room_goto(rm_fblaHQ);
}