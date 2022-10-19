event_inherited();
if (!global.pause && !dungeonPauseCheck()) {


	//skills
	if (interruptTimer == 0) {
		if (currentSkill == "Flurry Shot") {
			if (instance_exists(target)) {
				if (skillTimer > 60 && skillTimer <= 75 && skillTimer%3 == 0) {
					var num = (75-skillTimer);
					var offset = power(-1, num/3)*num; 
					var inst = createSubObject(x,y-(sprite_height/2)+offset, -1, anim_arrow);
					inst.dmg = skillScaling[0]*atk/100;
					inst.target = target;
				}
			}
		}
		if (currentSkill == "Auto: Shot") {
			if (skillTimer == 5 && instance_exists(target)) {
				var inst = createSubObject(x,y-(sprite_height/2), -1, anim_arrow);
				inst.dmg = atk*0.8;
				inst.target = target;
			}
		}
	}
}