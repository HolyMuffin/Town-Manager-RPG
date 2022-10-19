function spawnRoom_DungeonLibrary() {
	
	if (currentRoom == roomCount) {
		var inst = instance_create_depth(global.dungeonWidth-80, y+global.dungeonHeight_Sky+global.dungeonHeight_Ground/2, depth, RuinaLibrarian);
		inst.dungeon = id;
		inst.depth = -inst.y;
		librarian = inst;
		wait = true;
	}
}