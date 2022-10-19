event_inherited();

//character stats
hp_base = 700;
atk_base = 16;
def_base = 7;
updateBaseStats();
movespdMulti = 1;

resourceDrops = [2, 2, 2];

initializeSkills(3);

ds_list_add(skillName, "Overcharge");
ds_list_add(skillCooldown_max, 800);
ds_list_add(skillCooldown, 300+random(400));
ds_list_add(skillTimer_max, 85);
ds_list_add(skillRange, 100);

ds_list_add(skillName, "Auto: Pierce");
ds_list_add(skillCooldown_max, 75);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 40);
ds_list_add(skillRange, 100);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 5);
ds_list_add(skillRange, 100);
