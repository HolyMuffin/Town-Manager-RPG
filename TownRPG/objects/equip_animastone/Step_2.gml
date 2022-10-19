var size = ds_list_size(buffObjList);
if (size > 0) {
	for (var i = 0; i < size; i++) {
		var buff = ds_list_find_value(buffObjList, i);
		with (buff) {
			if (!global.pause && !dungeonPauseCheck() && source.combatStart)
				with (source) {
					healing(id, 0.20*hp_max, true);
				}
		}
	}
} 