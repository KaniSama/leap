/// @description 
//shader_set(shOutline)
	
//	shader_set_uniform_f(uPixelH, texelH);
//	shader_set_uniform_f(uPixelW, texelW);
	
	draw_sprite_ext(sFrogLegs, 0, x, y, xs, ys, -legRot, c_white, 1);
	draw_sprite_ext(sFrogLegs, 1, x, y, xs, ys, legRot, c_white, 1);

	var zero;
	if (legRot == 0) zero = 2;
	else zero = 0;

	draw_sprite_ext(sFrogBody, 0, x, y + 1.0 / (-legRot + zero), xs, ys, 0, c_white, 1);
	
//shader_reset();