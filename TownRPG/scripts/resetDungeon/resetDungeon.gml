function resetDungeon() {
	x = 0;
	y = resetLocation;
	currentRoom = 1;
	dungeonState = 1;
	walkTimer = walkTimer_max;
	running = false;
	
	while (ds_list_size(enemyList) > 0) {
		var inst = ds_list_find_value(enemyList, 0);
		instance_destroy(inst);
	}
}