function particleSparkle() {
	var particle = part_type_create();
	
	part_type_sprite(particle, SpriteSparkleParticle, false, false, false);
	part_type_speed(particle, 1, 1, 0, 0);
	part_type_direction(particle, 90, 90, 0, 0);
	part_type_size(particle, 1, 1, 0, 0);
	part_type_alpha2(particle, 1, 1);
	part_type_life(particle, 10, 10);
	return particle;
}