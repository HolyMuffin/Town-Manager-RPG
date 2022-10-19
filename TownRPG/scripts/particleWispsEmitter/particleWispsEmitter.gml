function particleWispsEmitter() {
	global.particleWisps = particleWisps();
	global.particleEmitterWisps = part_emitter_create(global.particleSystem);
	part_emitter_region(global.particleSystem, global.particleEmitterWisps, 40, room_width-40, 440, 840, ps_shape_rectangle, ps_distr_linear);
	part_emitter_stream(global.particleSystem, global.particleEmitterWisps, global.particleWisps, -6);
}