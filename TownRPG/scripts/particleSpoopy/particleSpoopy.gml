
function particleSpoopy() {
	var particle = part_type_create();
	part_type_shape(particle, pt_shape_flare);
	part_type_color1(particle, c_purple);
	part_type_alpha2(particle, 0.32, 0);
	part_type_size(particle, 1/3, 0, 0, 0);
	part_type_life(particle, 16, 16);
	return particle;
}