function loadGame() {
	var load = false;
	if(file_exists("save.ini")) {
		load = true;
		ini_open("save.ini");
		var i = 0;
		while(ini_key_exists("Character", "Char" + string(i))) {
			var char = createCharacter(ini_read_real("Character", "Char" + string(i), -1));
			char.xp = ini_read_real("Character", "Char" + string(i) + "Xp", -1);
			char.level = ini_read_real("Character", "Char" + string(i) + "Lvl", -1);
			i++;
		}
	
		for(var i = 0; i < array_length(global.EquipmentCount); i++) {
			global.EquipmentCount[i] = ini_read_real("Equipment", string(i), -1);
		}
	
		for(var i = 0; i < 4; i++) {
			 ds_list_set(global.dungeonSlots[0].partyList, i, ini_read_real("Dungeon", "Char" + string(i), -1));
			for(var j = 0; j < 3; j++) {
				ds_list_set(global.dungeonSlots[0].equipmentList, i*3 + j, ini_read_real("Dungeon", "Equipment" + string(i*3+j), -1));
			}
		}
	
		global.resources[0] = ini_read_real("Currency", "Gacha", -1);

		global.pityCount4star = ini_read_real("Misc", "Pity4Star", -1);
		global.pityCount5star = ini_read_real("Misc", "Pity5Star", -1);
		ini_close();
	}
	return load;
}