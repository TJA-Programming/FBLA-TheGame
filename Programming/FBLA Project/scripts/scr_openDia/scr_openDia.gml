///scr_openDia()
/*Opening dialogue for rival
 *Returns: Null
 */
switch (dia)
{
	case DIALOG.FIRST:								//Goes through each dialog in order
		draw_text(x, y-115, "Welcome to the FBLA");
		draw_text(x, y-95, "room, Josh");
		break;
	case DIALOG.SECOND:
		draw_text(x, y-115, "Feel free to try any fundraising");
		draw_text(x, y-95, "or community service projects");
		break;
	case DIALOG.THIRD:
		draw_text(x, y-115, "And, when you have raised enough");
		draw_text(x, y-95, "money, you can try a small competition!");
		break;
	case DIALOG.FOURTH:
		draw_text(x, y-110, "One more thing...");
		break;
	case DIALOG.FIFTH:
		draw_text(x, y-115, "When the date in the bottom");
		draw_text(x, y-95, "right corner reaches April 5th...");
		break;
	case DIALOG.SIXTH:
		draw_text(x, y-115, "You will go to the state");
		draw_text(x, y-95, "competition to finish your FBLA year");
		break;
	case DIALOG.SEVENTH:
		draw_text(x, y-115, "I challenge you to beat the school");
		draw_text(x, y-95, "record of " + string(rScore) + " points");
		break;
	case DIALOG.EIGHTH:
		draw_text(x, y-115, "In case you forget, the school record will be");
		draw_text(x, y-95, "displayed in the bottom left corner, good luck");
		break;
	case DIALOG.FINISH:
		talking = false;
		openCutscene = false;
		alarm[1] = random(4) * room_speed;
}