function spawnRoom_Dungeon3() {	
	if (currentRoom < roomCount) {
		spawnDoppel(560 - irandom(4)*20, global.dungeonY+global.dungeonHeight_Ground*1/6, Albert);
		spawnDoppel(560 - irandom(4)*20, global.dungeonY+global.dungeonHeight_Ground*2/6, Lisa);
		spawnDoppel(560 - irandom(4)*20, global.dungeonY+global.dungeonHeight_Ground*3/6, FurnaceGolem);
		spawnDoppel(560 - irandom(4)*20, global.dungeonY+global.dungeonHeight_Ground*4/6, Maria);
		spawnDoppel(560 - irandom(4)*20, global.dungeonY+global.dungeonHeight_Ground*5/6, SpoopyMage);
	} 
	
	if (currentRoom == roomCount) {
		var inst = spawnEnemy(560 - irandom(4)*20, 740, EnemyBoss3);
		boss = inst;
	}
}