if (!global.pause) {
	for (var i = 0; i < ds_list_size(charactersAtBuilding); i++) {
		var inst = ds_list_find_value(charactersAtBuilding, i);
		inst.burned = 0;
		inst.poisoned = 0;
		inst.mendingStored = 0;
		inst.shield = 0;
		if (inst.hp < inst.hp_max)
			inst.hp = min(inst.hp_max, inst.hp + inst.hp_max/30)
	}
}