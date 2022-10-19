function dungeonPauseCheck() {
	//checks if dungeon is paused (doesnt exist = not paused)
	return (dungeon!=pointer_null && instance_exists(dungeon) && dungeon.pause);
}