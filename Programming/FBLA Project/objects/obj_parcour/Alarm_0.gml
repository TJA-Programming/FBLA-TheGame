//Counts down time
time -= 1;
if (time <= 0)//Once time reaches 0, gives player 100 points and ends minigame
{
	pScore += 100;
	room_goto(rm_fblaHQ);
}
else
{
	alarm[0] = 1 * room_speed;
}