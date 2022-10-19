function initializeDungeonSlots() {	
	global.dungeonSlots = [0, 0, 0];
	for(var i = 0; i < 3; i++) {
		var slot = instance_create_depth(0,0,0,DungeonSlot);
		global.dungeonSlots[i] = slot;
		slot.slotNum = i;
	}
	/*
	global.dungeonSlot1Stage = 0;
	global.dungeonSlot1Party = ds_list_create();
	global.dungeonSlot1Equipment = ds_list_create();

	global.dungeonSlot2Stage = 0;
	global.dungeonSlot2Party = ds_list_create();
	global.dungeonSlot2Equipment = ds_list_create();

	global.dungeonSlot3Stage = 0;
	global.dungeonSlot3Party = ds_list_create();
	global.dungeonSlot3Equipment = ds_list_create();
	
	for(var i = 0; i < 4; i++){
	ds_list_add(global.dungeonSlot1Party, -1)
	ds_list_add(global.dungeonSlot2Party, -1)
	ds_list_add(global.dungeonSlot3Party, -1)
	
		for(var j = 0; j < 3; j++) {
			ds_list_add(global.dungeonSlot1Equipment, -1);
			ds_list_add(global.dungeonSlot2Equipment, -1);
			ds_list_add(global.dungeonSlot3Equipment, -1);
		}
	}*/
}