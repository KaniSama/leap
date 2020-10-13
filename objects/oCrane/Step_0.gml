/// @description 
if (!in_dialog && open_for_dialog && place_meeting(x, y, oFrog) && keyboard_check_pressed(ord("Z"))) {
	in_dialog = true;
	next++;
}

if (in_dialog) {
	image_speed = 0;
	if (i <= string_length(text[next])) {
		displaytext += string_copy(text[next], i, 1);
		i++;
	}
	
	if (displaytext == text[next] && keyboard_check_pressed(ord("Z"))) {
		in_dialog = false;
		if (instance_exists(oFrog)) oFrog.in_dialog = false;
		i = 1;
		displaytext = "";
	}
	
	if (next >= prevnext + lines[nextlines] && lines[nextlines] != 0) {
		open_for_dialog = false;
		prevnext = next;
		nextlines++;
	}
} else {
	image_speed = 1;
}

if (in_dialog && instance_exists(oFrog)) oFrog.in_dialog = true;

if (open_for_dialog) instance_activate_object(oWall);
else instance_deactivate_object(oWall);