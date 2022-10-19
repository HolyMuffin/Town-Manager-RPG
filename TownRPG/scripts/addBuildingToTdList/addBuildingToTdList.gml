function addBuildingToTdList(inst, building) {
	
	ds_list_add(inst.todoList, building);
	if (ds_list_size(inst.todoList) == 1)
		inst.currentBuilding = building;
}