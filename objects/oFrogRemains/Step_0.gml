/// @description 
x += hspd;
y += vspd;

vspd += .33;

if (position_meeting(x, y, oFloor)) {
	instance_destroy();
}