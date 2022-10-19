event_inherited();

//character stats
hp_base = 630;
atk_base = 8;
def_base = 15;
updateBaseStats();
movespdMulti = 1.4;

resourceDrops = [2, 2, 2];

initializeSkills(2);

ds_list_add(skillName, "Auto: Hammer");
ds_list_add(skillCooldown_max, 150);
ds_list_add(skillCooldown, 75);
ds_list_add(skillTimer_max, 40);
ds_list_add(skillRange, 85);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 5);
ds_list_add(skillRange, 85);
