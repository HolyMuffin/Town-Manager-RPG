event_inherited();

//character stats
hp_base = 120;
atk_base = 12;
def_base = 7;
updateBaseStats();

initializeSkills(2);
ds_list_add(skillName, "Auto: Bolt");
ds_list_add(skillCooldown_max, 160);
ds_list_add(skillCooldown, irandom(160));
ds_list_add(skillTimer_max, 20);
ds_list_add(skillRange, 280);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 5);
ds_list_add(skillRange, 280);