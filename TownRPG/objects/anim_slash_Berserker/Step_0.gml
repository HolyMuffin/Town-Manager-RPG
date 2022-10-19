if (!global.pause && !dungeonPauseCheck()) {
	if instance_exists(source) {
		for(var i = 0; i < ds_list_size(targetList); i++) {
			var target = ds_list_find_value(targetList, i);
			if (place_meeting(x,y,target)) {
				var missingHP = target.hp_max-target.hp;
				damage(target, dmg+missingHP*0.10, true);
				ds_list_delete(targetList, i);
				i--;
			}
		}
	} else
		instance_destroy();
}
event_inherited();
depth -= 50;
