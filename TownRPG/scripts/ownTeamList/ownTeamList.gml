function ownTeamList() {
	if (object_get_parent(source.object_index) == EnemyParent)
		return dungeon.enemyList;
	else
		return dungeon.partyList_alive;
}