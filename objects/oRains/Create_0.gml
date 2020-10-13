/// @description 
ps = part_system_create();

drip = part_type_create();
part_type_color1(drip, c_gray);
part_type_shape(drip, pt_shape_line);
part_type_direction(drip, 0, 359, 0, 0);
part_type_speed(drip, .1, .3, 0, 0);
part_type_size(drip, .01, .01, -0.0001, 0);
part_type_orientation(drip, 0, 0, 0, 0, true);
part_type_gravity(drip, .005, 270);
part_type_scale(drip, 1, 1);
part_type_life(drip, 10, 60);