
function particleSmoke() {
	var particle = part_type_create();
	part_type_shape(particle, pt_shape_cloud);
	part_type_color1(particle, c_dkgrey);
	part_type_alpha2(particle, 0.55, 0.15);
	part_type_size(particle, 0.3, 0.5, 0.01, 0.01);
	//part_type_speed(particle, 5, 7, 0, 0)
	part_type_life(particle, 25, 25);
	return particle;
}