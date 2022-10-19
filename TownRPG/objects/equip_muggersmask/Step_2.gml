var size = ds_list_size(buffObjList);
if (size > 0) {
	for (var i = 0; i < size; i++) {
		var buff = ds_list_find_value(buffObjList, i);
		with (buff) {
			if (!variable_instance_exists(id, "goldBuff")) {
				source.dungeon.goldBonus += 3;
				goldBuff = true;
			}
		}
	}
} 