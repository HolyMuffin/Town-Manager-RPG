function destroyAllButtons() {
	var buttonCount = ds_list_size(buttonList);
	for (var i = 0; i < buttonCount; i++) {
		instance_destroy(ds_list_find_value(buttonList, 0));
		ds_list_delete(buttonList, 0);
	}
}