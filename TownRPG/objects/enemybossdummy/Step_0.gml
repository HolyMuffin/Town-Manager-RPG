
event_inherited();
if (!global.pause && !dungeonPauseCheck()) {
	//skills
	if (interruptTimer == 0) {
	}
	
	counter++;
	if (counter == room_speed) {
		counter = 0;
		var dmgTaken = hp_max-hp;
		hp = hp_max;
		ds_list_add(dpsList, dmgTaken);
		listSize = ds_list_size(dpsList);
		if (listSize > 60) {
			ds_list_delete(dpsList, 0);
			listSize--;
		}
		//average dps calc
		var sumDPS = 0;
		for(var i = 0; i < listSize; i++) {
			sumDPS += ds_list_find_value(dpsList, i);
		}
		avgDPS = sumDPS/listSize;
	}
	
}