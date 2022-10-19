//run in an equipment object to remove a copy of its buffs from a unit
function dequip(equipment) {
	var unit = equipment.source;
	var equipmentObject = equipment.equipmentObject;
	equipmentObject.numAvailable++;
	for (var i = 0; i < equipmentObject.statCount; i++) { //wielder loses the stats of the equipment
		var stat = variable_instance_get(unit, equipmentObject.statNames[i]) - equipmentObject.statValues[i];
		variable_instance_set(unit, equipmentObject.statNames[i], stat);
	}
}
