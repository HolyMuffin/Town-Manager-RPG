function spawnMinion(x_, y_, objID) { //spawned by character, not dungeon
	var inst = instance_create_depth(x_, y_, 0, objID);
	setLevel(inst, level);
	inst.source = id;
	
	inst.dungeon = dungeon;
	if (object_get_parent(objID) == EnemyParent)
		dungeon.bastionEnemy += inst.bastion;
	else
		dungeon.bastionAlly += inst.bastion;
	
	ds_list_add(ownTeamList(), inst);
	return inst;
}