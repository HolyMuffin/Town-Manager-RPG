function spawnRoom_Dungeon2() {
	if (currentRoom < roomCount) {
		spawnEnemyRandom(450 - irandom(4)*20, global.dungeonY+global.dungeonHeight_Ground*1/5);
		spawnEnemyRandom(450 - irandom(4)*20, global.dungeonY+global.dungeonHeight_Ground*2/5);
		spawnEnemyRandom(450 - irandom(4)*20, global.dungeonY+global.dungeonHeight_Ground*3/5);
		spawnEnemyRandom(450 - irandom(4)*20, global.dungeonY+global.dungeonHeight_Ground*4/5);
	} 
	
	if (currentRoom == roomCount) {
		var inst = spawnEnemy(460, global.dungeonY+global.dungeonHeight_Ground*3/5, EnemyBossBandit);
		boss = inst;
	}
}