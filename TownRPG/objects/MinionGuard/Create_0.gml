event_inherited();

//character stats
startingX = 0.7;
hp_base = 150;
atk_base = 12;
def_base = 8;
updateBaseStats();
movespdMulti = 1.2;

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


