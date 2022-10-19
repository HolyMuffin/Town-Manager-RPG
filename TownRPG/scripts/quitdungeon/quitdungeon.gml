function quitDungeon() {
	for(var i = 0; i < ds_list_size(partyList); i++) {
		var unit = ds_list_find_value(partyList, i);
		ds_list_add(global.charactersAvailable, unit);
		unit.dungeon = pointer_null;	
		while(ds_list_size(unit.equipList) > 0) {
			var equipment = ds_list_find_value(unit.equipList, 0); //equipment = buff object
			with (equipment)
				dequip(equipment);
			instance_destroy(equipment);
			ds_list_delete(unit.equipList, 0);
		}
	}

	if(running)
		sendPartyToTown();

	for(var i = 0; ds_list_size(enemyList) > 0; i++) {
		instance_destroy(ds_list_find_value(enemyList, 0));
		ds_list_delete(enemyList, 0);
	}
	ds_list_destroy(partyList);
	ds_list_destroy(partyList_alive);
	ds_list_destroy(enemyList);
	ds_list_destroy(spawnList);

	slot.running = false;
	global.activeDungeonCount--;
	instance_destroy();
}