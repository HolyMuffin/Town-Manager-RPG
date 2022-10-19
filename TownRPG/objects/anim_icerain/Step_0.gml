event_inherited();
if (!global.pause && !dungeonPauseCheck()) {
	if (counter == 0) {
		xscale = source.image_xscale;
		x -= 90*xscale;
		y -= 180;
		image_angle = point_direction(x,y, targetX, targetY);
	}
	counter++;
	if (counter <= counter_max) { //rotate
		image_alpha = counter/100;
		var num = 50 + counter/counter_max*205;
		image_blend = make_color_rgb(num, num, num);
	}	
	
	var num = 7; //how early to stop projectile
	if (counter >= 90 && counter2 == 0) { //when correct angle and timer up
		//move toward target
		if (xscale == 1)
			x = min(targetX-num, x+3.5);
		if (xscale == -1)
			x = max(targetX+num, x-3.5);
		y = min(targetY-num*2, y+7);
		depth = -targetY;
	}

	if (x == targetX-num*xscale && y == targetY-num*2) { //
		counter2++;
		if (counter2 == 1) {
			var x_ = targetX//-5;
			var y_ = targetY//+sprite_height/2;
			var list = otherTeamList();
			for(var i = 0; i < ds_list_size(list); i++) {
				var inst = ds_list_find_value(list, i);
				if (instance_exists(source) && collision_ellipse(x_-2*radius, y_-radius, x_+2*radius, y_+radius, inst, false, false)) {

						applyBuff(inst, debuff_Frost, 3);
						inst.frostedCounter = 12;

						var temp = inst.damagedCounter;
						damage(inst, dmg, true);
						if (instance_exists(inst))
							inst.damagedCounter = max(5, temp);
				}
			}
		}
		if (counter2 == 5)
			instance_destroy();
	}

}