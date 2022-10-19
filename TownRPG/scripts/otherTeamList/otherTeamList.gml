function otherTeamList() {
	if (object_get_parent(source.object_index) == EnemyParent)
		return dungeon.partyList_alive;
	else
		return dungeon.enemyList;
}