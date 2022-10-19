//run in an equipment object to attach a copy of its buffs to a unit 
function equip(unit) {
	var inst = instance_create_depth(0, 0, 0, equipmentBuff);
	inst.dungeon = unit.dungeon;
	
	inst.equipmentObject = id; //what equipment the buff represents
	if (complex)
		ds_list_add(buffObjList, inst);
	
	inst.source = unit; //what unit the buff is attached to
	ds_list_add(unit.equipList, inst);
	
	
	for (var i = 0; i < statCount; i++) { //wielder gains the stats of the equipment
		var stat = variable_instance_get(unit, statNames[i]) + statValues[i];
		variable_instance_set(unit, statNames[i], stat)
	}
}