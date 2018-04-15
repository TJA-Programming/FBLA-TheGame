///scr_slcDia()
/*SLC dialogue for rival
 *Returns: Null
 */
switch (dia)
{
	case DIALOG.FIRST:								//Goes through each dialog in order
		draw_text(x, y-110, "You made it!");
		break;
	case DIALOG.SECOND:
		draw_text(x, y-115, "The state competition is today and");
		draw_text(x, y-95, "you're going to compete");
		break;
	case DIALOG.THIRD:
		draw_text(x, y-115, "You will choose one of three events:");
		draw_text(x, y-95, "Accounting, Intro to FBLA, and Financial Math");
		break;
	case DIALOG.FOURTH:
		draw_text(x, y-115, "Each of these events has three");
		draw_text(x, y-95, "multiple-choice questions");
		break;
	case DIALOG.FIFTH:
		draw_text(x, y-115, "Choose an answer by pressing the number");
		draw_text(x, y-95, "corresponding to one of the answer choices");
		break;
	case DIALOG.SIXTH:
		draw_text(x, y-110, "Each correct answer is worth 250 points");
		break;
	case DIALOG.SEVENTH:
		draw_text(x, y-110, "One more thing...");
		break;
	case DIALOG.EIGHTH:
		draw_text(x, y-110, "Good luck and remember to have fun!");
		break;
	case DIALOG.FINISH:
		room_goto(rm_slcChooseEvent);
}