event_inherited();
if (!global.pause && !dungeonPauseCheck()) {
	
	
	//skills
	if (interruptTimer == 0) {
		if (currentSkill == "Auto: Rapid Slash") {
			if (skillTimer == 40) {
				var inst = createSubObject(x,y-sprite_height/2, 0, anim_slash_Sweeper);
				
				if (instance_exists(target)) {
					inst.image_angle = point_direction(x,y-sprite_height/2,target.x,target.y-target.sprite_height/2);
					if (inst.image_angle > 90 && inst.image_angle < 270)
						inst.image_yscale = -1;
				}
				
				inst.dmg = atk;
				healing(id, hp_max/1000, false);
				inst.image_blend = c_maroon;
				ds_list_copy(inst.targetList, otherTeamList());	
			}
		}
	}
}