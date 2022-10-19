event_inherited();

//character stats
hp_base = 240;
atk_base = 15;
def_base = 5;
updateBaseStats();
poison = 5;

resourceDrops = [2, 2, 2];

initializeSkills(2);
ds_list_add(skillName, "Auto: Crossbow");
ds_list_add(skillCooldown_max, 180);
ds_list_add(skillCooldown, 120);
ds_list_add(skillTimer_max, 20);
ds_list_add(skillRange, 250);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 5);
ds_list_add(skillRange, 250);