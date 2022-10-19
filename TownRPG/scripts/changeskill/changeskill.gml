function changeSkill(skill){
	cancelSkill();	
	var index = ds_list_find_index(skillName, skill);
	if (ds_list_find_value(skillCooldown, index) == 0) {
		currentSkill = skill;
		skillTimer = ds_list_find_value(skillTimer_max, index);
	}
}