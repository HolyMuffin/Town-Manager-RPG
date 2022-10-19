event_inherited();

if (!global.pause && !dungeonPauseCheck()) {
	counter++;
	image_index = floor(counter/8)%image_number; 
	
	if (instance_exists(source) && counter%50 == 0) {
		for(var i = 0; i < ds_list_size(targetList); i++) {
			var target = ds_list_find_value(targetList, i);
			if (place_meeting(x,y,target)) {
				damage(target, dmg, true);
			}
		}
	}

	if (counter >= duration)
		instance_destroy();
		
}