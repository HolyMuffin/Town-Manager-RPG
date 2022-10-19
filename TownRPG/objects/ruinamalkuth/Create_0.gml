event_inherited();

//character stats
hp_base = 500;
atk_base = 15;
def_base = 10;
updateBaseStats();
movespdMulti = 1;
burn = 15;

resourceDrops = [2, 2, 2];

initializeSkills(2);

ds_list_add(skillName, "Auto: Slash");
ds_list_add(skillCooldown_max, 85);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 40);
ds_list_add(skillRange, 85);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 5);
ds_list_add(skillRange, 85);
