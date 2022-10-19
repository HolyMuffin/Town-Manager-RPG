event_inherited();
if (!global.pause && !dungeonPauseCheck() && instance_exists(dungeon)) {
	
	var list = otherTeamList();
	for(var i = 0; i < ds_list_size(list); i++) {
		var unit = ds_list_find_value(list, i);
		var buff = applyBuff(unit, buff_WitherAura);
		buff.buffSource = id;
	}
	
	//skills
	if (interruptTimer == 0) {
		if (currentSkill == "Auto: Bash") {
			if (!instance_exists(target) || !inRange(0)) {
				cancelSkill();
			} else {
				if (skillTimer == 40) {
					var inst = createSubObject(target.x,target.y-target.sprite_height/2, 0, anim_bash);
					inst.target = target;
					inst.skill = currentSkill;
					inst.dmg = atk*1.5;
				}
			}
		}
	}
}