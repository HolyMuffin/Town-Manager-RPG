if (!global.pause && !dungeonPauseCheck() && combatStart) {
	var list = ownTeamList();
	for(var i = 0; i < ds_list_size(list); i++) {
		var unit = ds_list_find_value(list, i);
		applyBuff(unit, buff_RufusPrecision, skillScaling[2]);
		applyBuff(unit, buff_Bastion);
		if (unit.doofusSquad)
			applyBuff(unit, buff_RufusVitality, skillScaling[2]*1.5);
	}
}
event_inherited();
if (!global.pause && !dungeonPauseCheck()) {
	//skills
	if (interruptTimer == 0) {
		if (currentSkill == "Precision Bolt") {
			if (skillTimer == 50 && instance_exists(target)) {
				var inst = createSubObject(x,y-(sprite_height/2), depth-1, anim_arrow);
				inst.image_yscale = 1.5;
				inst.dmg = skillScaling[0]*atk/100;
				inst.target = target;
			}
		}
		
		if (currentSkill == "Piercing Bolts") {
			if ((skillTimer == 20||skillTimer == 40||skillTimer == 60)) {
				var highestDEF = 0;
				var list = otherTeamList();
				var target_;
				if (ds_list_size(list) > 0) {
					target_ = ds_list_find_value(list, 0);
					for(var i = 0; i < ds_list_size(list); i++) {
						var unit = ds_list_find_value(list, i);
						if (unit.def > highestDEF) {
							target_ = unit;
							highestDEF = unit.def;
						}
					}
				}
				var inst = createSubObject(x,y-(sprite_height/2), 0, anim_PiercingBolt);
				inst.dmg = skillScaling[1]*atk/100;
				inst.target = target_;
			}
		}
		
		if (currentSkill == "Auto: Shot") {
			if (skillTimer == 10 && instance_exists(target)) {
				var inst = createSubObject(x,y-(sprite_height/2), depth-1, anim_arrow);
				inst.dmg = atk;
				inst.target = target;
			}
		}
	}
}