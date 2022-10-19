if (!global.pause && !dungeonPauseCheck()) {
	counter++;
	if (instance_exists(target)) {
		x = target.x;
		y = target.y-target.sprite_height/2;
		depth = -target.y-1;
		target.image_blend = image_blend;
		
		target.tpCounter = 100*counter/tpTime;
				
		image_xscale = 1 - counter/tpTime;
		image_yscale = 1 + 0.5*counter/tpTime;
		
		if (counter == floor(tpTime/2))
			target.shifting = true;
		
		if (counter == tpTime) {
			target.x = tpX;
			target.y = tpY;
			var time = tpTime;
			target.interruptTimer = time;
			var blend = image_blend;
			with(target) {
				var inst = createSubObject(x, y, depth-1, anim_shiftAftereffect);
				inst.target = id;
				inst.tpTime = time+10;
				inst.image_blend = blend;
			}
			instance_destroy();
		}
	} else
		instance_destroy();
	
	
}