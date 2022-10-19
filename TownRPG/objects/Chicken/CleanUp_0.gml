if (instance_exists(dungeon)) {
	var inst = instance_create_depth(global.dungeonWidth-50, y, 0, ChickenBoss);
	inst.dungeon = dungeon;
}
event_inherited();