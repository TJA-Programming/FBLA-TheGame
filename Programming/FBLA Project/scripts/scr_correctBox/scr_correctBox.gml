///scr_correctBox(Can, Box)
/// @description scr_correctBox(Can, Box)
/// @param Can
/// @param Box

/* Determines if can color matches the box color
 * Returns: Boolean
 */
can = argument0;
box = argument1;

with (can)
{
	switch (canCol)
	{
		case CAN.RED:
			if (other.box.boxType == BOX.RED)
			{return true;}
			break;
		case CAN.ORANGE:
			if (other.box.boxType == BOX.ORANGE)
			{return true;}
			break;
		case CAN.BLUE:
			if (other.box.boxType == BOX.BLUE)
			{return true;}
			break;
	}
}
return false;