if (!global.pause && !dungeonPauseCheck() && instance_exists(source)) {
	if (active)
		counter++;
	cooldown = max(0, cooldown-1);
	if (!active && cooldown == 0) {
		active = true;
		var list = otherTeamList();
		var target = ds_list_find_value(list, irandom(ds_list_size(list)-1));
		targetX = target.x;
		targetY = target.y;
		spd = point_distance(x,y,targetX,targetY-140)/dur1;
		counter = 0;
	}
	
	if (counter <= dur1) {
		moveToward2(targetX, targetY-140, spd); //move above
		image_xscale = 1;
		show_debug_message("prep");
	}
	
	if (counter > dur1+dur2 && counter < dur1+dur2+dur3) {
		moveToward2(targetX, targetY, 140/dur3); //slam
		image_xscale = 1;
		show_debug_message("slam");
	}
	
	if (counter > dur1+dur2+dur3+dur4) {
		moveToward2(source.x+returnX, source.y+returnY, 5); //return
		show_debug_message("return");
	}
	
	if (active && x == source.x+returnX && y == source.y+returnY) {
		active = false;
		cooldown = cooldown_max;
		show_debug_message("reset");
	}
}