
function particleCloud() {
	var particle = part_type_create();
	part_type_shape(particle, pt_shape_cloud);
	part_type_orientation(particle, 0, 360, 0, 0, false);
	part_type_direction(particle, -2, 182, 0, 0);
	var spd = 0.6 + random(0.2);
	var life = 85 + irandom(15);
	part_type_speed(particle, spd, spd, -spd/life, 0);
	part_type_color1(particle, global.c_poison);
	part_type_alpha3(particle, 0.5, 0.8, 0);
	part_type_size(particle, 0.4, 0.6, 0.007, 0);
	part_type_life(particle, life, life);
	return particle;
}