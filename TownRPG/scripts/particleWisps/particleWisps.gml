
function particleWisps() {
	var particle = part_type_create();
	part_type_size(particle, 2, 5, 0, 0.02);
	part_type_color1(particle, make_color_rgb(250, 200, 10));
	part_type_alpha3(particle, 0.12, 0.47, 0.12);
	part_type_life(particle, 200, 350);
	part_type_speed(particle, 0, 0.1, 0, 0.02);
	part_type_direction(particle, 0, 359, 0, 15);
	return particle;
}