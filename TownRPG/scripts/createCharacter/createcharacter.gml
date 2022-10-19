function createCharacter(char) {
	var inst = instance_create_depth(174, 183, 0, char);
	addBuildingToTdList(inst, instance_find(Building_House, 0));
	ds_list_add(global.charactersAcquired, inst);
	ds_list_add(global.charactersAvailable, inst);
	return inst;
}