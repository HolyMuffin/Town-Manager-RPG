event_inherited();

//character stats
hp_base = 580;
atk_base = 16;
def_base = 8;
updateBaseStats();

resourceDrops = [2, 2, 2];

initializeSkills(4);

ds_list_add(skillName, "Degraded Shockwave");
ds_list_add(skillCooldown_max, 550);
ds_list_add(skillCooldown, 400);
ds_list_add(skillTimer_max, 40);
ds_list_add(skillRange, 300);

ds_list_add(skillName, "Degraded Chain");
ds_list_add(skillCooldown_max, 500);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 40);
ds_list_add(skillRange, 300);

ds_list_add(skillName, "Auto: Degraded Pillar");
ds_list_add(skillCooldown_max, 150);
ds_list_add(skillCooldown, 50);
ds_list_add(skillTimer_max, 40);
ds_list_add(skillRange, 300);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 5);
ds_list_add(skillRange, 300);
