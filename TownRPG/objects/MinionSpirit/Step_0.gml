depth = -y;
//rotation = (rotation+1)%15;

if (!instance_exists(dungeon) || !instance_exists(source) || source.location == 1)
	instance_destroy();
else if (!global.pause && !dungeonPauseCheck()) {
	
	
	var inrange = false; 
	if (variable_instance_exists(source, "target") && instance_exists(source.target)) {
		with (source) {
				inrange = distanceFrom(target) < 200;
		}
	}
	
	
	if (inrange) {//source in range of target
		position = 1;
		if (!source.usingBlade) {
			usingBlade = true;
			source.bladeInUse = true;
		}
		
		if (x-(source.target.x+source.image_xscale*40) == 0) {//when in range to attack
			image_xscale = -source.image_xscale;
			
			if (cooldown == 0) {
				cooldown = 200;
				attackCounter = (attackCounter+1)%5
			} else {
				
				if (cooldown == 50 || cooldown == 55 || cooldown == 60) {
					var offset = (cooldown-50);
					var inst = createSubObject(x+(offset*3-20)*image_xscale, y-75-offset*3, 0, anim_spiritblade);
					inst.dmg = source.atk;
					inst.target = source.target;
				}
				
				cooldown--;
			}
			//
			//
		} else {//move to attack
			cooldown = 0;
			moveToward2(source.target.x+source.image_xscale*40, source.target.y-1, global.combatSpeed*1.8);
		}
	} else { //return to source
		position = 0;
		usingBlade = false;
		source.bladeInUse = false;
		
		if (abs(x-(source.x-source.image_xscale*30)) == 0) {
			image_xscale = source.image_xscale;
		} else {
			moveToward2(source.x-source.image_xscale*30, source.y-1, global.combatSpeed*source.movespdMulti+0.2);
		}
	}
}
