event_inherited();
if (!global.pause && !dungeonPauseCheck()) {
	
	
	//skills
	if (interruptTimer == 0) {
			
		if (currentSkill == "Degraded Shockwave") {
			if (skillTimer == 20) {
				var list = otherTeamList();
				for(var i = 0; i < ds_list_size(list); i++) {
					var target_ = ds_list_find_value(list, i);
					inst = createSubObject(target_.x-10*image_xscale, target_.y+1, target_.depth-1, anim_spike);
					inst.xSign = image_xscale;
					inst.dmg = atk*4;
					inst.target = target_;
					inst.image_xscale = 0;
				}	
			}
		}

		if (currentSkill == "Degraded Chain") {
			var list = otherTeamList();
			for(var i = 0; i < ds_list_size(list); i++) {
				var target_ = ds_list_find_value(list, i);
				applyBuff(target_, debuff_BinahChains);
			}
		}

		if (currentSkill == "Auto: Degraded Pillar") {
			if (skillTimer == 20 && instance_exists(target)) {
				var inst = createSubObject(x,y-sprite_height/2, 0, anim_BinahBullet);
				inst.dmg = atk*2;
				inst.target = target;
			}
		}
	}
}