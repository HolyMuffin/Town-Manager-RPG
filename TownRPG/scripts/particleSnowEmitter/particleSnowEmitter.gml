function particleSnowEmitter() {
	global.particleSnow = particleSnow();
	global.particleEmitterSnow = part_emitter_create(global.particleSystem);
	part_emitter_region(global.particleSystem, global.particleEmitterSnow, 40, room_width+40, -100, 0, ps_shape_rectangle, ps_distr_linear);
	part_emitter_stream(global.particleSystem, global.particleEmitterSnow, global.particleSnow, -2);
}