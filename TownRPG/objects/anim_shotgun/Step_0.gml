if (!global.pause && !dungeonPauseCheck()) {
	if instance_exists(source) {
		for(var i = 0; i < ds_list_size(targetList); i++) {
			var target = ds_list_find_value(targetList, i);
			if (place_meeting(x,y,target)) {
				knock(target, 4, 4, 70)
				damage(target, dmg, true);
				ds_list_delete(targetList, i);
				i--;
			}
		}
	} else
		instance_destroy();
	
	image_xscale*=1.02;
}

event_inherited();
