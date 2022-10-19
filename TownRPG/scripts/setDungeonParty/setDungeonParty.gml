function setDungeonParty(list) {	
	resetDungeon();
	global.activeDungeonCount++;
	ds_list_copy(partyList, list);
	
	for (var i = 0; i < ds_list_size(partyList); i++) {
		var inst = ds_list_find_value(partyList, i);
		inst.dungeon = id;
		ds_list_add(inst.todoList, instance_find(examplePortal, 0));
	}
}