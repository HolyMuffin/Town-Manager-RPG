if (!global.pause) {
	for (var i = 0; i < ds_list_size(charactersAtBuilding); i++) {
		var inst = ds_list_find_value(charactersAtBuilding, i);
		if (inst.buildingTimer == buildingTimer-70) {
			inst.destinationX = x+42;
		}
		
		if (ds_list_size(inst.todoList) > 1 && inst.buildingTimer > 71)
			inst.buildingTimer = 71;
		
		if (inst.buildingTimer == 70) {
			inst.destinationX = x;
		}
	}
}