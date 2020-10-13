/// @description 
shader_set(shSway);
	shader_set_uniform_f(time, current_time);
	shader_set_uniform_f(pixelW, texture_get_texel_width(sprite_get_texture(sprite_index, image_index)));

	draw_self();
shader_reset();