//Calendar
if (day > monthD[month])
{
	day -= monthD[month];
	month += 1;
}
if (month >= 12)
{
	month = 0;	
}

//Tests if player can afford competition door
if (pMoney >= compPrice)
{
	affordComp = true;	
}
else
{
	affordComp = false;	
}

//Detects when SLC is
if (month = 3 and day >= 5)
{
	day = 5;
	slcCutscene = true;
}