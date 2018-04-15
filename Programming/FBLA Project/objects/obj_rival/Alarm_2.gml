if (!openCutscene and !slcCutscene)//If not beginning of game, places rival randomly in the room
{
	x = random_range(32, room_width-32);
}
else
{
	x = room_width-128;	
}