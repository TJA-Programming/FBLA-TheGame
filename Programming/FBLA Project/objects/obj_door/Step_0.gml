//Teleports player to new room
if (place_meeting(x, y, obj_player) and keyboard_check_pressed(useButton))
{
	
	switch (doorType)
	{
		case DOOR.COMPETING:
			room_goto(rm_competing);
			break;
		case DOOR.FUNDRAISING:
			room_goto(rm_fundraising);
			break;
		case DOOR.SERVICE:
			room_goto(rm_commService);
			break;
		case DOOR.SOUP:
			room_goto(rm_makeSoupT);
			break;
		case DOOR.CLEANUP:
			room_goto(rm_roadCleanupT);
			break;
		case DOOR.PARCOUR:
			if (obj_hidden.affordComp)
			{
				room_goto(rm_parcourT);
				pMoney -= 100;
			}
			break;
		case DOOR.PARCOUR_FINISH:
			pScore += 15 * obj_parcour.time;
			obj_hidden.day += meetingInterval;
			room_goto(rm_fblaHQ);
			break;
		case DOOR.FBLA:
			room_goto(rm_fblaHQ);
			break;
		case DOOR.TUTORIAL:
			room_goto(rm_menu);
			break;
	}
}