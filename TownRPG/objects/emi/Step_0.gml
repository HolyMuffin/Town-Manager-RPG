
event_inherited();
if (!global.pause && !dungeonPauseCheck()) {
	
	if (!fistTest) {
		var inst = instance_create_depth(x, y, depth, attach_fist);
		inst.source = id;
		inst.dungeon = dungeon;
		fistTest = true;
	}

	image_index = 0;
	//skills
	if (interruptTimer == 0) {
		
		if (currentSkill == "Rain") {
			if (skillTimer > 50 && skillTimer % 4 == 0) {
				for(var i = 0; i < 4; i++)
					if (skillTimer <= 400-waveDelay*i) {
						var inst = createSubObject(room_width*(skillTimer-50-waveDelay*(3-i))/90, dungeon.y + global.dungeonHeight_Sky + random(global.dungeonHeight_Ground), 0, anim_hedron);
						inst.dmg = atk*1.8;
					}
				}
		}
		
		if (currentSkill == "Auto: AOE Smash") {
			if (skillTimer <= 180)
			image_index = 1;
			if (skillTimer <= 110)
				image_index = 2;
			if (skillTimer == 110) {
				for(var i = 0; i < ds_list_size(dungeon.partyList_alive); i++) {
					var inst = ds_list_find_value(dungeon.partyList_alive, i);
					if (collision_rectangle(x, y-45, x+100*image_xscale, y+30, inst, false, false)) {
						if (!dodgeCheck(inst, 0.4)) {
							damage(inst, atk*5, true);
							knock(inst, 2.8, 4.5, 90);
						}
					}
				}	
			}
		}
	}
}