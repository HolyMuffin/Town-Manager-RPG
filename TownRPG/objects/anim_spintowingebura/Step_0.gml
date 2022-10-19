event_inherited();

if (!global.pause && !dungeonPauseCheck()) {
	counter++;
	image_index = floor(counter/8)%image_number; 
	
	if (instance_exists(source)) {
		for(var i = 0; i < ds_list_size(targetList); i++) {
			var target = ds_list_find_value(targetList, i);
			var center = id;
			if (place_meeting(x,y,target)) {
				push(target, 8, point_direction(x, y, target.x, target.y), 7);
				if (counter % 12 == 0)
					damage(target, dmg, true);
			}
		}
	}

	if (counter >= duration)
		instance_destroy();
		
}