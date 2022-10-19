function particleShadow(sprite) {
	var particle = part_type_create();
	
	part_type_sprite(particle, sprite, false, false, false);
	part_type_size(particle, 1, 1, 0, 0);
	part_type_color1(particle, c_black);
	part_type_alpha2(particle, 0.4, 0);
	part_type_life(particle, 40, 40);
	return particle;
}