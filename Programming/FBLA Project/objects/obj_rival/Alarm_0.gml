waiting = false;
switch (dia)//Moves dialog phase into next appropiate one
{
	case DIALOG.FIRST:
		dia = DIALOG.SECOND;
		break;
	case DIALOG.SECOND:
		dia = DIALOG.THIRD;
		break;
	case DIALOG.THIRD:
		dia = DIALOG.FOURTH;
		break;	
	case DIALOG.FOURTH:
		dia = DIALOG.FIFTH;
		break;
	case DIALOG.FIFTH:
		dia = DIALOG.SIXTH;
		break;
	case DIALOG.SIXTH:
		dia = DIALOG.SEVENTH;
		break;
	case DIALOG.SEVENTH:
		dia = DIALOG.EIGHTH;
		break;
	case DIALOG.EIGHTH:
		dia = DIALOG.FINISH;
		break;
}