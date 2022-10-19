event_inherited();
if (!global.pause && !dungeonPauseCheck()) {
	//skills
	if (interruptTimer == 0) {
		
		if (currentSkill == "Icy Wind") {
			if (skillTimer == 40) {
				//Apply Frost to allies
				var list = ownTeamList();
				for(var i = 0; i < ds_list_size(list); i++) {
					var target_ = ds_list_find_value(list, i);
					applyBuff(target_, debuff_Frost, skillScaling[2]);
					applyBuff(target_, buff_GlaiceResist);
				}
				//Damage and apply Frost to enemies
				var list = otherTeamList();
				for(var i = 0; i < ds_list_size(list); i++) {
					var target_ = ds_list_find_value(list, i);
					applyBuff(target_, debuff_Frost, skillScaling[2]*1.3);
					damage(target_, atk*0.8, true); 
				}
			}
		}
		
		if (currentSkill == "Frost Shield") {
			if (skillTimer == 20 && instance_exists(target)) {
				//target lowest health ally
				var target_;
				var lowestHP = 1.01;
				var list = ownTeamList();
				for(var i = 0; i < ds_list_size(list); i++) {
					inst = ds_list_find_value(list, i);
					var hppercent = inst.hp/inst.hp_max;
					if (hppercent < lowestHP) {
						target_ = inst;
						lowestHP = hppercent;
					}
				}
				applyBuff(target_, buff_GlaiceShield, skillScaling[1]);
				applyBuff(target_, buff_GlaiceResist);
				target_.frostedCounter = 12;
			}
		}
		
		if (currentSkill == "Shard Shower") {
			if (skillTimer == 95) {
				var list = otherTeamList();
				rainTarget = ds_list_find_value(list, irandom(ds_list_size(list)-1));
			}
			
			if (skillTimer < 90 && skillTimer > 20 && skillTimer % 8 == 0 && instance_exists(rainTarget)) {
				var rng = 50;
				var inst = createSubObject(rainTarget.x+random(rng)-rng/2, rainTarget.y+random(rng)-rng/2, 0, anim_icerain);
				inst.dmg = skillScaling[0]*atk/100;
			}
		}
		
		if (currentSkill == "Auto: Bolt") {
			if (skillTimer == 1 && instance_exists(target)) {
				var inst = createSubObject(x,y-(sprite_height/2), -1, anim_bolt);
				inst.dmg = atk;
				inst.target = target;
				inst.image_blend = make_color_rgb(215, 215, 255);
			}
		}
	}
}
