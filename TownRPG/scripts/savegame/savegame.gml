function saveGame() {
	ini_open("save.ini");
	for(var i = 0; i < ds_list_size(global.charactersAcquired); i++) {
		var char = ds_list_find_value(global.charactersAcquired, i);
		ini_write_real("Character", "Char" + string(i), char.object_index);
		ini_write_real("Character", "Char" + string(i) + "Xp", char.xp);
		ini_write_real("Character", "Char" + string(i) + "Lvl", char.level);
	}
	
	for(var i = 0; i < array_length(global.EquipmentCount); i++) {
		ini_write_real("Equipment", string(i), global.EquipmentCount[i])
	}
	
	for(var i = 0; i < 4; i++) {
		ini_write_real("Dungeon", "Char" + string(i), ds_list_find_value(global.dungeonSlots[0].partyList, i));
		for(var j = 0; j < 3; j++) {
			ini_write_real("Dungeon", "Equipment" + string(i*3+j), ds_list_find_value(global.dungeonSlots[0].equipmentList, i*3 + j));
		}
	}
	
	ini_write_real("Currency", "Gacha", global.resources[0]);

	ini_write_real("Misc", "Pity4Star", global.pityCount4star);
	ini_write_real("Misc", "Pity5Star", global.pityCount5star);
	ini_close();
}