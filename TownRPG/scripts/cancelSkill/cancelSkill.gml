function cancelSkill() {
	if (currentSkill != -1) { //skill just finished casting
		var index = ds_list_find_index(skillName, currentSkill);
		ds_list_set(skillCooldown, index, ds_list_find_value(skillCooldown_max, index));
		currentSkill = -1;
	}
	skillTimer = 0;
}