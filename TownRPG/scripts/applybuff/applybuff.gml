//apply a copy of a buff to a unit 
function applyBuff(unit, buff, OPT_Stat0 = "default") {
	var inst = instance_create_depth(0, 0, 0, buff);
	inst.source = unit; //what unit the buff is attached to
	if (object_get_parent(object_index) == AllyParent)
		inst.buffSource = id;
	else
		inst.buffSource = source; //what unit applied the buff
	inst.dungeon = dungeon;
	if (OPT_Stat0 != "default") {
		inst.statValues[0] = OPT_Stat0;
	}
	ds_list_add(unit.buffList, inst); //add to unit's list of buffs
	
	for (var i = 0; i < inst.statCount; i++) { //unit gains stats on buff
		var stat = variable_instance_get(unit, inst.statNames[i]) + inst.statValues[i];
		
		//apply to dungeon if stat is bastion
		var ownTeam;
		with (unit)
			ownTeam = ownTeamList()
		if (inst.statNames[i] == "bastion" && ownTeam == dungeon.partyList_alive)
			dungeon.bastionAlly += inst.statValues[i];
		if (inst.statNames[i] == "bastion" && ownTeam == dungeon.enemyList)
			dungeon.bastionEnemy += inst.statValues[i];
			
		variable_instance_set(unit, inst.statNames[i], stat)
	}
	
	var buffCount = 0;
	for(var i = ds_list_size(unit.buffList)-1; i >= 0; i--) {
		var currentBuff = ds_list_find_value(unit.buffList, i);
		if (currentBuff.object_index == buff) {
			buffCount++;
			if (buffCount > inst.stackLimit) {
				removeBuff(currentBuff);
				break;
			}
		}
	}
	return inst;
}