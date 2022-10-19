function revive(unit, hp) {
	//add bastion
	if (object_get_parent(target.object_index) == EnemyParent)
		dungeon.bastionEnemy += target.bastion;
	else
		dungeon.bastionAlly += target.bastion;
	
	unit.hp = hp;
	ds_list_add(ownTeamList(), unit);
}