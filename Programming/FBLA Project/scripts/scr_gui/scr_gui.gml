///scr_gui(string, obj)
/// @description scr_gui(string, obj)
/// @param string
/// @param obj

/* Places text for gui at either left object or right object
 * Returns: Null
 */
draw_set_halign(fa_center);
draw_set_font(fn_score);
draw_set_color(c_black);
draw_text(argument1.x, argument1.y-25, string(argument0));