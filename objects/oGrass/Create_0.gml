/// @description 
depth = -2;

image_index = irandom(2);
image_speed = 0;

time = shader_get_uniform(shSway, "time");
pixelW = shader_get_uniform(shSway, "pixelW");