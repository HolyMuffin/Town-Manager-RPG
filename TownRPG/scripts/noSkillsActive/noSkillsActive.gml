function noSkillsActive() {
	for(var i = 0; i < skillCount; i++) {
		if (ds_list_find_value(skillCast, i))
			return false;
	}
	return true;
}