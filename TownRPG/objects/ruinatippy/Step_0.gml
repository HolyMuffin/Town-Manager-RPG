event_inherited();
if (!global.pause && !dungeonPauseCheck()) {
	
	//skills
	if (interruptTimer == 0) {

		if (currentSkill == "Auto: Pierce") {
			if (!instance_exists(target) || !inRange(0)) {
				cancelSkill();
			} else {
				if (skillTimer == 40) {
					var inst = createSubObject(target.x,target.y-target.sprite_height/2, 0, anim_pierce);
					inst.target = target;
					inst.skill = currentSkill;
					inst.dmg = atk*1.4;
				}
			}
		}
		
		if (currentSkill == "Wait") {
			currentSkill = "5"; // string(irandom(5));
			skillTimer = 40;
		}
		
		if (currentSkill == "0") { //Heal
			if (skillTimer == 35) {
				var inst = createSubObject(x,y, -1, anim_heal_front);
				inst.target = id;
				var inst = createSubObject(x,y, -1, anim_heal_back);
				inst.target = id;
		}
			healing(id, 0.25*hp_max/room_speed, true);
		}
		
		if (currentSkill == "1") { //Dodge
			if (skillTimer == 35) {
				dodgeSelf(35);
				skillTimer = 10;
			}
		}
		
		if (currentSkill == "2") { //Stab Self
			if (skillTimer == 35) {
				var inst = createSubObject(x,y-sprite_height/2, 0, anim_pierce);
				inst.target = id;
				inst.skill = currentSkill;
				inst.dmg = atk*5;
			}
		}
		
		if (currentSkill == "3") { //Walk to random enemy and use hammer
			if (skillTimer == 40) {
				var list = otherTeamList();
				walkTarget = ds_list_find_value(list, irandom(ds_list_size(list)-1));
			}
			if (skillTimer == 35 && distanceFrom(walkTarget) > 65) {
				moveToward(walkTarget.x, walkTarget.y);
				skillTimer++;
			}

			if (skillTimer < 35 && !instance_exists(target) && inRange(1)) {
				cancelSkill();
			} else {
				if (skillTimer == 34) {
					var inst = createSubObject(target.x,target.y-target.sprite_height/2, 0, anim_hammer);
					inst.target = target;
					inst.skill = currentSkill;
					inst.dmg = atk*1.5;
				}
			}
		}
		
		if (currentSkill == "4") { //Dash to random enemy and knock them
			if (skillTimer == 40) {
				var list = otherTeamList();
				walkTarget = ds_list_find_value(list, irandom(ds_list_size(list)-1));
			}
			if (!instance_exists(walkTarget) || walkTarget.hp == 0)
				skillTimer = 0;
			if (skillTimer == 35 && distanceFrom(walkTarget) > 25) {
				moveToward(walkTarget.x, walkTarget.y);
				moveToward(walkTarget.x, walkTarget.y);
				skillTimer++;
			}
			if (skillTimer == 34) {
				knock(walkTarget, 4, 5, 70);
				damage(walkTarget, atk, true);
			}
			
		}
		
		if (currentSkill == "5") { //Backflip
			if (skillTimer == 40) {
				if (tenacity == 0) {
					xscale = image_xscale;
					x_ = x;
					y_ = y;
					angle_ = 0;
				}
				tenacity = 100;
				angle_ += 5*xscale;
				var ang = abs(angle_);
				if (ang > 0 && ang < 360) {
					x_ += xscale*(abs(ang-180)-90)/50;
					y_ -= (180-ang)/50;
				}
				skillTimer++;
				if (ang == 360) {
					skillTimer = 35;
					tenacity = 0;
				}
			}
		}
		
	}
}