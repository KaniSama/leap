/// @description 
var vw = 1024;
var vh = 576;

if (in_dialog) {
	draw_set_halign(fa_center);
	draw_set_font(FontBig);
	draw_set_color(c_dkgray);
	draw_rectangle(0, vh - 12, vw, vh - 128, false);
	
	draw_set_color(c_white);
	draw_text(vw * .5, vh - 32, displaytext);
}