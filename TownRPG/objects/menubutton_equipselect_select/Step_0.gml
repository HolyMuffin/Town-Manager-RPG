if (ds_list_size(global.equipmentAvailable) > buttonNumber) {
	numInPreset = 0;
	var equipment = ds_list_find_value(global.equipmentAvailable, buttonNumber);
	var equiplist = menu.slot.equipmentList;
	for (var i = 0; i < ds_list_size(equiplist); i++) {
		if (ds_list_find_value(equiplist, i) == equipment)
			numInPreset++;
	}
}