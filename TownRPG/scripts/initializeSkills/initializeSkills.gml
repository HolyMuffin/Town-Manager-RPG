function initializeSkills(skillCount_) {
	skillCount = skillCount_;
	skillCast = ds_list_create();
	skillCooldown = ds_list_create();
	skillCooldown_max = ds_list_create();
	skillRange = ds_list_create();
	skillTimer_max = ds_list_create();
	skillName = ds_list_create();
	currentSkill = -1;
	skillTimer = 0;	
}