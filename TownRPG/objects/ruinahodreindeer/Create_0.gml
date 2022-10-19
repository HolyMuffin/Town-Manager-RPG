event_inherited();

//character stats
hp_base = 360;
atk_base = 11;
def_base = 7;
updateBaseStats();

resourceDrops = [2, 2, 2];

initializeSkills(3);

ds_list_add(skillName, "Eruption");
ds_list_add(skillCooldown_max, 400);
ds_list_add(skillCooldown, 100);
ds_list_add(skillTimer_max, 80);
ds_list_add(skillRange, 225);

ds_list_add(skillName, "Auto: Bolt");
ds_list_add(skillCooldown_max, 150);
ds_list_add(skillCooldown, 75);
ds_list_add(skillTimer_max, 40);
ds_list_add(skillRange, 225);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 5);
ds_list_add(skillRange, 225);
