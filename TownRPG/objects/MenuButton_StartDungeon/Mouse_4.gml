var partyList = menu.slot.partyList;
if (ds_list_size(partyList) > 0) {
	var dungeon = instance_create_depth(x,y,0,menu.selectedDungeon.dungeon);//create dungeon
	dungeon.level = menu.selectedDungeon.level;
	menu.slot.dungeon = dungeon.object_index;
	dungeon.slot = menu.slot;
	menu.slot.running = true;

	var list = ds_list_create();
	for(var i = 0; i < 4; i++) { //i < dungeon party size, but currently always 4 on this menu
		var unit = ds_list_find_value(partyList, i);
		if (unit != -1) { // <- if yes character
			ds_list_add(list, unit);
			ds_list_delete(global.charactersAvailable, ds_list_find_index(global.charactersAvailable, unit));
			for (var j = 0; j < 3; j++) {
				var equipment = ds_list_find_value(menu.slot.equipmentList, i*3+j);
				if (equipment != -1) {
					with(equipment) {
						equip(unit);
					}
				}
			}
		} else { // <- if no character
			//clear out equipment with no associated character
			for (var j = 0; j < 3; j++) {
				var equipment = ds_list_find_value(menu.slot.equipmentList, i*3+j);
				if (equipment != -1) {
					equipment.numAvailable++;
					ds_list_set(menu.slot.equipmentList, i*3+j, -1);
				}
			}
			//clear equipment
		}
	}

	with(dungeon)
		setDungeonParty(list);

	ds_list_destroy(list);
	instance_destroy(menu);
	
	//move camera to dungeon
	camera_set_view_pos(global.cam, 0, global.dungeonY - global.dungeonHeight_Sky);
	camera_set_view_size(global.cam, global.dungeonWidth, global.dungeonHeight);
}
