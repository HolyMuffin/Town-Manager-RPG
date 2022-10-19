if (object_get_parent(object_index) == CharacterParent)
	initializeCharacter();
else {//for when copied by enemy
	event_perform_object(EnemyParent,  ev_create, 0);
	skillLevel = [1,1,1,1];
	//maybe need skill base/growth/scaling? leaving note just in case
}