function sendPartyToDungeon() {
	for (var i = 0; i < ds_list_size(partyList); i++) {
		var inst = ds_list_find_value(partyList, i);
		inst.x = global.dungeonX-100;
		inst.y = global.dungeonY + 280 * (i+1) / (ds_list_size(partyList)+1);
		inst.location = 2;
		inst.waiting = false;
		
		while (ds_list_find_index(inst.todoList, instBuilding3) >= 0)
			ds_list_delete(inst.todoList, ds_list_find_index(inst.todoList, instBuilding3));
		
	}
}