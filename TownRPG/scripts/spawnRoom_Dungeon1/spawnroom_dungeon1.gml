function spawnRoom_Dungeon1() {
	
	if (currentRoom < roomCount) {
		spawnEnemy(400, global.dungeonY+global.dungeonHeight_Ground*1/5, Slime);
		spawnEnemy(400, global.dungeonY+global.dungeonHeight_Ground*2/5, Slime);
		spawnEnemy(400, global.dungeonY+global.dungeonHeight_Ground*3/5, Slime);
		spawnEnemy(400, global.dungeonY+global.dungeonHeight_Ground*4/5, Slime);
		/*spawnEnemyRandom(450 - irandom(4)*20, global.dungeonY+global.dungeonHeight_Ground*1/5);
		spawnEnemyRandom(450 - irandom(4)*20, global.dungeonY+global.dungeonHeight_Ground*2/5);
		spawnEnemyRandom(450 - irandom(4)*20, global.dungeonY+global.dungeonHeight_Ground*3/5);
		spawnEnemyRandom(450 - irandom(4)*20, global.dungeonY+global.dungeonHeight_Ground*4/5);/**/
	} 
	
	if (currentRoom == roomCount) {
	}
}