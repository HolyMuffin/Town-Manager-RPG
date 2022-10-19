if (location == 2 && hp > 0 && instance_exists(dungeon) && (ds_list_size(spiritList) < 1) ) {
	var inst = instance_create_depth(x, y, depth, ShamanRedSpirit);
	inst.source = id;
	inst.dungeon = dungeon;
	inst.num = ds_list_size(spiritList)+1;
	ds_list_add(spiritList, inst);
	
	var inst = instance_create_depth(x, y, depth, ShamanBlueSpirit);
	inst.source = id;
	inst.dungeon = dungeon;
	inst.num = ds_list_size(spiritList)+1;
	ds_list_add(spiritList, inst);
	
	var inst = instance_create_depth(x, y, depth, ShamanGreenSpirit);
	inst.source = id;
	inst.dungeon = dungeon;
	inst.num = ds_list_size(spiritList)+1;
	ds_list_add(spiritList, inst);
	
	var inst = instance_create_depth(x, y, depth, ShamanPurpleSpirit);
	inst.source = id;
	inst.dungeon = dungeon;
	inst.num = ds_list_size(spiritList)+1;
	ds_list_add(spiritList, inst);
}

event_inherited();
if (!global.pause && !dungeonPauseCheck()) {


	//skills
	if (interruptTimer == 0) {
		if (currentSkill == "Auto: Shot") {
			if (skillTimer == 5 && instance_exists(target)) {
				var inst = createSubObject(x,y-(sprite_height/2), -1, anim_arrow);
				inst.dmg = atk*0.8;
				inst.target = target;
			}
		}
	}
}