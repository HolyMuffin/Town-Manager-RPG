event_inherited();
if (!global.pause && !dungeonPauseCheck()) {
	part_particles_create(dungeon.particleSystem, x, y, global.particleSpoopy, 1);
}