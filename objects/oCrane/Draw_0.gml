/// @description 
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_font(Font);

if (!in_dialog && open_for_dialog) {
	if (place_meeting(x, y, oFrog)) {
		draw_text(x, y-12, "z");
	}
} else {
	
}

draw_self();