running = false;
partyList = ds_list_create();
dungeon = global.dungeons[0];
equipmentList = ds_list_create();

for(var i = 0; i < 4; i++) {
	ds_list_add(partyList, -1);
	for(var j = 0; j < 3; j++) {
		ds_list_add(equipmentList, -1);
	}
}
