
function particleSnow() {
	var particle = part_type_create();
	part_type_size(particle, 2, 3, 0, 0);
	part_type_color1(particle, c_white);
	part_type_alpha2(particle, 0.6, 0.5);
	part_type_life(particle, 530, 530);
	part_type_speed(particle, 0.6, 0.75, 0, 0.05);
	part_type_direction(particle, 255, 255, 0, 0.05);
	return particle;
}