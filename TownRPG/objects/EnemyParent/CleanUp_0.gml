cleanupSkills();
if (instance_exists(dungeon)) {
	if (!instance_exists(source))
		source = id;
	var index = ds_list_find_index(ownTeamList(), id);
	if (index != -1)
		ds_list_delete(ownTeamList(), index);
}
interruptTimer = 2;