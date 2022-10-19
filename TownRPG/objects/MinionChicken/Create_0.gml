event_inherited();

//character stats
hp_base = 30;
atk_base = 10;
def_base = 5;
movespdMulti = 1;
xpMultiplier = 0.01;
updateBaseStats();

initializeSkills(2);

ds_list_add(skillName, "Auto: Peck");
ds_list_add(skillCooldown_max, 110);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 20);
ds_list_add(skillRange, 70);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 5);
ds_list_add(skillRange, 70);