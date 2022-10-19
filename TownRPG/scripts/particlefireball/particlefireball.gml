function particleFireball() {
	var particle = part_type_create();
	part_type_shape(particle, pt_shape_sphere);
	part_type_color1(particle, make_color_rgb(255, 50, 0)); //make_color_rgb(255, 205, 0)
	part_type_alpha2(particle, 0.6, 0.2);
	var size = 0.5;
	var life = 10;
	part_type_size(particle, size, size, -size/life, 0);
	part_type_life(particle, life, life);
	return particle;
}