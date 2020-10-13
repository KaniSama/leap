/// @description 



draw_set_font(FontBig);
var vw = 1024;
var vh = 576;

if (!instance_exists(oFrog)) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(vw * .5, vh * .5, Texts.text[Texts.next]);
	//draw_text(camxr + camw * .5, camyr + camh * .5, Texts.text[Texts.next]);
		
	draw_set_font(Font);
	draw_text(vw * .5, vh - 18, "press z to move on");
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_bottom);
}