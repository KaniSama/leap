/// @description 
if (instance_exists(oFrog)) {
	camx = oFrog.x + oFrog.idir * 8 - camw div 2;
	camy = clamp(oFrog.y - camh div 2, 0, room_height-camh);
	
	cama = (oFrog.dir * 5);
} else if (keyboard_check_pressed(ord("Z"))) {
	room_restart();
}

camxr += (camx - camxr) * .33;
camyr += (camy - camyr) * .33;
camar += (cama - camar) * .15;

camera_set_view_pos(cam, camxr, camyr);
camera_set_view_angle(cam, camar);