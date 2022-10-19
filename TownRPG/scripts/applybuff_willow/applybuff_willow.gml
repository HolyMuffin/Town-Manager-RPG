//apply Willow's buff to a unit, giving them a % of its item's stats (only run by Willow)
function applyBuff_Willow(unit) {
	var inst = instance_create_depth(0, 0, 0, buff_Willow);
	inst.source = unit; //what unit the buff is attached to
	inst.dungeon = dungeon;
	ds_list_add(unit.buffList, inst); //add to unit's list of buffs
	
	for (var i = 0; i < ds_list_size(equipList); i++) { //for each equipment on Willow
		var equipment = ds_list_find_value(equipList, i).equipmentObject; //find equipment with index i
		for(var j = 0; j < equipment.statCount; j++) { //for each stat on the equipment
			var statname = equipment.statNames[j]; //name of stat granted by equipment
			var statvalue = equipment.statValues[j]; //value of stat granted by equipment
			var index = -1;
			for (var k = 0; k < array_length(inst.statNames); k++)
				if (inst.statNames[k] == statname)
					index = k;
			if (index == -1) { //if stat is not already on Willow's buff
				index = array_length(inst.statValues);
				inst.statNames[index] = statname; //add name of stat to Willow's end of buff
				inst.statValues[index] = statvalue*0.3; //add value of equipment's buff to end of Willow's buff
				inst.statCount++;
			} else {
				inst.statValues[index] += statvalue*0.3; //add value of equipment's buff to Willow's buff
			}
		}
	}
	
	for (var i = 0; i < inst.statCount; i++) { //unit gains stats on buff
		var stat = variable_instance_get(unit, inst.statNames[i]) + inst.statValues[i];
		variable_instance_set(unit, inst.statNames[i], stat)
	}
	
	var buffCount = 0;
	for(var i = ds_list_size(unit.buffList)-1; i >= 0; i--) {
		var currentBuff = ds_list_find_value(unit.buffList, i);
		if (currentBuff.object_index == buff_Willow) {
			buffCount++;
			if (buffCount > inst.stackLimit) {
				removeBuff(currentBuff);
				break;
			}
		}
	}
	with (unit)
		updateBaseStats();
	
	return inst;
}