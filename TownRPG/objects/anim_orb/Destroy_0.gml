if (instance_exists(source)) {
	var listIndex = ds_list_find_index(source.orbList, id);
	if (listIndex != -1)
		ds_list_delete(source.orbList, listIndex);
}