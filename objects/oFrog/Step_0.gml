/// @description 

dir = keyboard_check(vk_right) - keyboard_check(vk_left);

if (!in_dialog) {
	if (dir != 0) {
		txs = dir;
		idir = dir;
	
		if (legRot >= legRotClamp) {
			legDir = -legRotRot;
		} else if (legRot <= -legRotClamp){
			legDir = legRotRot;
		} else if (legDir == 0) {
			legDir = legRotRot;
		}
	
		spd = clamp(spd + dir * .1, -1, 1);
	} else {
		legDir = 0;
		legRot = 0;
	
		if (spd < 0) {
			spd += .05;
		} else if (spd > 0) {
			spd -= .05;
		}
		if (abs(spd) < 0.2) spd = 0;
	}
} else {
	legDir = 0;
	legRot = 0;
	
	if (spd < 0) {
		spd += .05;
	} else if (spd > 0) {
		spd -= .05;
	}
	if (abs(spd) < 0.2) spd = 0;
}

if (!place_meeting(x, y+vspd, oFloor)) {
	vspd += fall;
	
	legRot = -legRotClamp;
} else {
	while (!place_meeting(x, y+1, oFloor)) {
		y++;
		y = round(y);
	}
	if (vspd > 0) { 
		ys = .5;
		xs = idir * 3;
	}
	vspd = 0;
	
	if (keyboard_check_pressed(vk_up) && !in_dialog) {
		vspd = -4;
		ys = 3;
		xs = idir * .5;
	}
}


if (!place_meeting(x+spd, y, oWall) && !place_meeting(x+spd, y-1, oFloor)) x += spd;
//x = round(x);
y += vspd;

legRot += legDir;
xs += (txs - xs) * .15;
ys += (tys - ys) * .15;
