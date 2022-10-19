//run by buff to remove its effects from a unit 
function removeBuff(buff) {
	var unit = buff.source; //what unit the buff is attached to
	if (instance_exists(unit)) {
		for (var i = 0; i < buff.statCount; i++) { //unit loses stats on buff
			var stat = variable_instance_get(unit, buff.statNames[i]) - buff.statValues[i];
			variable_instance_set(unit, buff.statNames[i], stat)
		}
		var index = ds_list_find_index(unit.buffList, buff);
		ds_list_delete(unit.buffList, index); //remove from unit's list of buffs	
		instance_destroy(buff);
	}
}