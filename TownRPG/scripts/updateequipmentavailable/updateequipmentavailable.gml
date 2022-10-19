function updateEquipmentAvailable() {
	ds_list_clear(global.equipmentAvailable);
	for(var i = 0; i < array_length(global.EquipmentArray); i++) {
		var equipment = global.EquipmentArray[i];
		if(equipment.numAvailable > 0)
			ds_list_add(global.equipmentAvailable, equipment);
	}
}