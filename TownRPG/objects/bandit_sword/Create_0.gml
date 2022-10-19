event_inherited();

//character stats
hp_base = 250;
atk_base = 14;
def_base = 8;
movespdMulti = 1;
updateBaseStats();

resourceDrops = [2, 2, 2];

initializeSkills(4);

ds_list_add(skillName, "Counterattack Prep");
ds_list_add(skillCooldown_max, 350);
ds_list_add(skillCooldown, 100);
ds_list_add(skillTimer_max, 120);
ds_list_add(skillRange, 70);

ds_list_add(skillName, "Auto: Slash");
ds_list_add(skillCooldown_max, 75);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 40);
ds_list_add(skillRange, 70);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 5);
ds_list_add(skillRange, 70);

ds_list_add(skillName, "Counterattack");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 55);
ds_list_add(skillRange, 70);