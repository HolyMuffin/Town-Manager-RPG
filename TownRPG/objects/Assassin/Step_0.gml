conditionalSkill_Shadowstep();
event_inherited();
if (!global.pause && !dungeonPauseCheck()) {

//skills
	if (interruptTimer == 0) {
		
		if (currentSkill == "Shadowstep") {
			if (skillTimer == 1) {
				var furthest = ds_list_find_value(dungeon.enemyList, 0);
				for (var i = 1; i < ds_list_size(dungeon.enemyList); i++)
					if (distanceFrom(furthest)<distanceFrom(ds_list_find_value(dungeon.enemyList, i)))
						furthest = ds_list_find_value(dungeon.enemyList, i);
				stun(furthest, 200);
				x = furthest.x-50*furthest.image_xscale;
				y = furthest.y;		
				shadowstep_charge = false;
			}
		}

		if (currentSkill == "Auto: Slash") {
			if (!instance_exists(target) || !inRange(1)) {
				cancelSkill();
			} else {
				if (skillTimer == 40) {
					var inst = createSubObject(target.x,target.y-target.sprite_height/2, 0, anim_slash_targeted);
					inst.target = target;
					inst.skill = currentSkill;
					inst.dmg = atk*2;
				}
			}
		}
	}
}
