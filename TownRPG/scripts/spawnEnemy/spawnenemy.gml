function spawnEnemy(x_, y_, objID) {
	var inst = instance_create_depth(x_, y_, 0, objID);
	setLevel(inst, level);
	inst.image_xscale = -1;
	inst.dungeon = id;
	bastionEnemy += inst.bastion;
	ds_list_add(enemyList, inst);
	return inst;
}