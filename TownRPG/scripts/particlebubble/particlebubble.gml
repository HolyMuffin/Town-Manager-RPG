
function particleBubble() {
	var particle = part_type_create();
	//part_type_shape(particle, pt_shape_ring);
	part_type_shape(particle, pt_shape_ring);
	//part_type_color1(particle, make_color_rgb(120, 160, 250));
	part_type_color1(particle, make_color_rgb(50, 80, 200));
	part_type_alpha2(particle, 0.7, 1);
	part_type_size(particle, 0.12, 0.18, 0, 0);
	part_type_speed(particle, 4, 4, -0.01, 0);
	part_type_life(particle, 35, 70);
	return particle;
}