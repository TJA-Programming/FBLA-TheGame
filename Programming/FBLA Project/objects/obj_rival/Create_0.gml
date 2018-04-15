if (!openCutscene and !slcCutscene)//If not beginning of game, places rival randomly in the room
{
	alarm[2] = 3;
}
else
{
	x = room_width-128;	
}
y = obj_player.y;

//Variables
dir = 1//1 for facing right, -1 for facing left
spd = 4;
vsp = 0;
talking = false;
canMove = false;
newX = 0;
waitTime = 5 * room_speed;//Seconds to wait when talking
waiting = false;//Determines if rival letting player read text
enum DIALOG
{
	FIRST,
	SECOND,
	THIRD,
	FOURTH,
	FIFTH,
	SIXTH,
	SEVENTH,
	EIGHTH,
	FINISH
}
dia = DIALOG.FIRST;

if (!openCutscene and !slcCutscene and obj_hidden.month!= 3 and obj_hidden.day != 5)//For when player returns to FBLA room
{
	alarm[1] = random(4) * room_speed;	
}

//Goal
globalvar rScore;
rScore = 2000;//Default school record
switch (gameDifficulty)
{
	case 0:
		rScore = 2000;
		break;
	case 1:
		rScore = 2500;
		break;
	case 2:
		rScore = 3000;
		break;
}

