function cleanupSkills() { //destroy all skill related lists
	ds_list_destroy(skillCast);
	ds_list_destroy(skillCooldown);
	ds_list_destroy(skillCooldown_max);
	ds_list_destroy(skillRange);
	ds_list_destroy(skillTimer_max);
	ds_list_destroy(skillName);
}