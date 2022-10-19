event_inherited();

if (!global.pause && !dungeonPauseCheck()) {
	if (instance_exists(source)) {
		moveToward2(source.x+xOffset, source.y-source.sprite_height/2+yOffset, spd);
		if (distanceFrom(source) > 50 && spd == 0.7)
			moveToward2(source.x+xOffset, source.y-source.sprite_height/2+yOffset, 4.3);
		
		if (distanceFrom(source) < 50 && spd > 0.7) {
			spd = 0.7;
			depthOffset = random(0.2) - 0.1;
			ds_list_add(source.orbList, id);
		}
		
				
		if (point_distance(x,y,source.x+xOffset, source.y-source.sprite_height/2+yOffset) == 0) {
			xOffset = irandom(44) - 22;
			yOffset = irandom(30) - 10;
			depthOffset = random(0.2) - 0.1;
		}
		depth = source.depth + depthOffset-1;
	} else
		instance_destroy();
}