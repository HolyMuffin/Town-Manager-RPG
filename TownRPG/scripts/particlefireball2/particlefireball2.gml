function particleFireball2() {
	var particle = part_type_create();
	part_type_shape(particle, pt_shape_sphere);
	part_type_color1(particle, make_color_rgb(255, 200, 0)); 
	part_type_alpha2(particle, 0.8, 0.2);
	var size = 0.3;
	var life = 5;
	part_type_size(particle, size, size, -size/life, 0);
	part_type_life(particle, life, life);
	return particle;
}