event_inherited();

//character stats
hp_base = 500;
atk_base = 5;
def_base = 5;
vitality = 10;
updateBaseStats();

initializeSkills(2);

ds_list_add(skillName, "Auto: Bash");
ds_list_add(skillCooldown_max, 100);
ds_list_add(skillCooldown, irandom(100));
ds_list_add(skillTimer_max, 40);
ds_list_add(skillRange, 180);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 5);
ds_list_add(skillRange, 180);