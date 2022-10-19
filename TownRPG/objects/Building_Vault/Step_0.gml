if (!global.pause) {
	for (var i = 0; i < ds_list_size(charactersAtBuilding); i++) {
		storeResources(ds_list_find_value(charactersAtBuilding, i));
	}
}