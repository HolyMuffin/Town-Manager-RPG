function spawnEnemyRandom(x_, y_) {
	var weight = irandom(dungeonWeight-1)+1;
	var counter = 0;
	
	while (weight > 0) {
		weight -= ds_list_find_value(spawnList, counter);
		if (weight > 0)
			counter += 2;
		else
			counter++;
	}
	
	var inst = spawnEnemy(x_, y_, ds_list_find_value(spawnList, counter));
	return inst;
}