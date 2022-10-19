if (!global.pause && castingOnrush) {
	depth = -1000;
	//0: choose target
	if (onrushCounter % 18 == 0) {
		var rand = irandom(ds_list_size(onrushList)-1); 
		onrushTarget = ds_list_find_value(onrushList, rand);
		ds_list_delete(onrushList, rand);
	}
	//3: jump to target and slash (face direction based on travel direction)
	if (onrushCounter % 18 == 3) {
		if (instance_exists(onrushTarget)) { //can it even cease to exist while dungeon is paused?
			//face the direction the target is in
			image_xscale = sign(target.x - x);
			//jump to behind target
			var ang = point_direction(x,y-sprite_height/2, onrushTarget.x, onrushTarget.y-onrushTarget.sprite_height/2);
			x = onrushTarget.x + image_xscale*30;
			y = onrushTarget.y;
			//attack target
			var inst = createSubObject(onrushTarget.x,onrushTarget.y-onrushTarget.sprite_height/2, 0, anim_pierce);
			inst.target = onrushTarget;
			inst.skill = currentSkill;
			inst.dmg = atk*4;
			inst.image_xscale = 1.8;
			inst.image_yscale = 1.4;
			inst.image_angle = ang;
			inst.image_blend = c_red;
		}
	}
	//10: unpause dungeon if done	
	if (onrushCounter % 18 == 17 && ds_list_size(onrushList) == 0) {
		castingOnrush = false;
		dungeon.pause = false;
	}
	onrushCounter++;
	
}


event_inherited();
if (!global.pause && !dungeonPauseCheck()) {
	
	
	//skills
	if (interruptTimer == 0) {


		if (currentSkill == "Onrush") {
			if (skillTimer == 5) {
				dungeon.pause = true;
				onrushCounter = 0;
				castingOnrush = true;
				ds_list_copy(onrushList, otherTeamList());
			}	
		} 
		
		
		
		if (currentSkill == "Spin to Win") {
			
			//initialize spin
			if (skillTimer == 95) {
				spinDir = image_xscale;
				var inst = createSubObject(x,y+1, 0, anim_spintowinGebura);
				inst.target = id;
				inst.dmg = atk*1.8;
				inst.image_blend = c_red;
				ds_list_copy(inst.targetList, otherTeamList());	
			}
			//move while spinning
			if (skillTimer > 5 && skillTimer < 95)
				moveToward(x+spinDir/2, y);
			
		}

		if (currentSkill == "Auto: AOE Slash") {
			if (skillTimer == 50) {
				var inst = createSubObject(x,y-sprite_height/2, 0, anim_slash_AoE);
				
				if (instance_exists(target)) {
					inst.image_angle = point_direction(x,y-sprite_height/2,target.x,target.y-target.sprite_height/2);
					if (inst.image_angle > 90 && inst.image_angle < 270)
						inst.image_yscale = -1;
				}
				
				inst.dmg = atk*1.6;
				inst.image_blend = c_red;
				ds_list_copy(inst.targetList, otherTeamList());	
			}
		}
	}
}