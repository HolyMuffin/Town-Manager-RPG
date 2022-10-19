draw_self();
if (ds_list_size(global.equipmentAvailable) > buttonNumber) {
	var equipment = ds_list_find_value(global.equipmentAvailable, buttonNumber);
	
	draw_sprite(equipment.icon, 0, x, y);
	draw_text(x, y, equipment.numAvailable-numInPreset);
}
