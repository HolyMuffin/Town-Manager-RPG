event_inherited();
if (!global.pause && !dungeonPauseCheck()) {


	//skills
	if (interruptTimer == 0) {
		if location == 2 {
			//part_particles_create(dungeon.particleSystem, x+random(sprite_width)-sprite_width/2, y-random(sprite_height), particle, 1);
		}
		/*
		if (currentSkill == "Baldmond Bros") {
			if (skillTimer == 30) {
				if (object_get_parent(object_index) == EnemyParent) {
					spawnMinion(x+25*image_xscale,y+10-irandom(20), MinionGuardEnemy);
				} else
					spawnMinion(x+25*image_xscale,y+10-irandom(20), MinionGuard);
			}
		}
		
		if (currentSkill == "Baldmond Beam") {
			if (skillTimer == 150 && instance_exists(target)) {
				var inst = createSubObject(x,y-(sprite_height/2), -1, anim_baldmondbeam);
				inst.dmg = atk/50;
			}
		}
		*/
		if (currentSkill == "Group Heal") {
			if (skillTimer == 10) {
				var list = ownTeamList();
				for(var i = 0; i < ds_list_size(list); i++) {
					var target_ = ds_list_find_value(list, i);
					var inst = createSubObject(x,y, -1, anim_heal_front);
					inst.target = target_;
					var inst = createSubObject(x,y, -1, anim_heal_back);
					inst.target = target_;
					healing(target_, skillScaling[0]*atk/100, true);
					if (target_.hp/target_.hp_max < 0.5)
						healing(target_, skillScaling[0]*(skillScaling[1]/100)*atk/100, true);
				}
			}
		}

		if (currentSkill == "Auto: Bolt") {
			if (skillTimer == 1 && instance_exists(target)) {
				var inst = createSubObject(x,y-(sprite_height/2), -1, anim_bolt);
				inst.dmg = atk;
				inst.target = target;
				inst.image_blend = make_color_rgb(255, 230, 180);
			}
		}
	}
}
