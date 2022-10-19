function addToSpawnList(list, objID, weight) {
	ds_list_add(list, weight);
	ds_list_add(list, objID);
	dungeonWeight += weight;
}