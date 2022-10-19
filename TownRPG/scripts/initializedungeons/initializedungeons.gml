function initializeDungeons() {
	global.dungeons = [];
	var dungeonObjects = [dungeon_Crypt, dungeon_Library, dungeon_Bandits];
	
	for(var i = 0; i < array_length(dungeonObjects); i++) {
		var inst = instance_create_depth(0, 0, 0, dungeonObjects[i]);
		global.dungeons[i] = inst;
	}
}