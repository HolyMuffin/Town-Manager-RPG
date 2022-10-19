event_inherited();

//character stats
hp_base = 550;
atk_base = 14;
def_base = 8;
updateBaseStats();
movespdMulti = 1;
precision = 10;

resourceDrops = [2, 2, 2];

initializeSkills(2);

ds_list_add(skillName, "Auto: Sword");
ds_list_add(skillCooldown_max, 110);
ds_list_add(skillCooldown, 75);
ds_list_add(skillTimer_max, 40);
ds_list_add(skillRange, 150);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 5);
ds_list_add(skillRange, 150);
