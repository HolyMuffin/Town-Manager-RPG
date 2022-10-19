function initializeNonCharacter() {

	//combatai variables
	initializeCombatStats();
	level = 1;
	diesOnDeath = true;
	buffList = ds_list_create();

	//
	dungeon = pointer_null;
	location = 2; //in dungeon
	
	var inst = instance_create_depth(x, y, 0, unitShadow);
	inst.source = id;
	
	
	
	//noncharacter only
	persist = false;
	if (object_get_parent(object_index) == EnemyParent)
		resourceDrops = [0, 0, 0];

}