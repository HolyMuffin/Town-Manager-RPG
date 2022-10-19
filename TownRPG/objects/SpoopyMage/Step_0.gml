event_inherited();
if (!global.pause && !dungeonPauseCheck()) {

	/*if (location == 2 && dungeon.dungeonState == 1)
		ds_list_clear(orbList);*/
	//skills
	if (interruptTimer == 0) {
		/*
		if (currentSkill == "Black Hole") {
			if (skillTimer == 5)
				if (instance_exists(target)) {
					var inst = createSubObject(target.x,target.y, -room_height, anim_blackhole);
					inst.dmg = atk/30;
				}
		}*/
		
		if (currentSkill == "Reanimate") {
			
			if (skillTimer == 5) {
				if (object_get_parent(source.object_index) == EnemyParent) {
			
				} else {
					var reanimate = false;
					for (var i = 0; i < ds_list_size(dungeon.partyList); i++) {
						var unit = ds_list_find_value(dungeon.partyList, i);
						if (unit.hp == 0 && unit.hp_max > 0) {
							revive(unit, unit.hp_max);
							unit.reanimated = true;
							applyBuff(unit, buff_Reanimate);
							reanimate = true;
							break;
						}
					}
					if (!reanimate) {
						cancelSkill();
							ds_list_set(skillCooldown, 0, 20);
					}
				}
			}
			
			var reanimate = false;
			for (var i = 0; i < ds_list_size(dungeon.partyList); i++) {
				var unit = ds_list_find_value(dungeon.partyList, i);
				if (unit.hp == 0 && unit.hp_max > 0) {
					reanimate = true;
					break;
				}
			}
			
			if (!reanimate) {
				cancelSkill();
					ds_list_set(skillCooldown, 0, 20);
			}
		}
		
		if (currentSkill == "Orb Barrage") {
			if (skillTimer == 5 && instance_exists(target))
				if (ds_list_size(orbList) > 0) {
					var orb = ds_list_find_value(orbList, 0);
					if (instance_exists(orb)) {
						var inst = createSubObject(orb.x,orb.y, -1, anim_spoopy);
						inst.dmg = atk*1.1;
						inst.target = target;
						instance_destroy(orb);
						skillTimer = 15;
					}
				}
		}
		if (currentSkill == "Auto: Siphon") {
			if (skillTimer == 5 && instance_exists(target)) {
				var dmg = damage(target, atk, true);
				healing(id, dmg/4, false);
				var inst = createSubObject(target.x,target.y-(target.sprite_height/2), -1, anim_orb);
			}
		}
	}
}