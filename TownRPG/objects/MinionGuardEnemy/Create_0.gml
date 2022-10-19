event_inherited();

//character stats
hp_base = 100;
atk_base = 10;
def_base = 8;
movespdMulti = 1.2;
imageBlend_base = c_dkgrey;
updateBaseStats();

initializeSkills(2);

ds_list_add(skillName, "Auto: Slash");
ds_list_add(skillCooldown_max, 70);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 40);
ds_list_add(skillRange, 85);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 3);
ds_list_add(skillRange, 85);


