event_inherited();

//character stats
hp_base = 500;
atk_base = 12;
def_base = 8;
updateBaseStats();
vengeance = 8;
lifesteal = 8;
frenzy = 8;

resourceDrops = [2, 2, 2];

initializeSkills(3);

ds_list_add(skillName, "Pause");
ds_list_add(skillCooldown_max, 300);
ds_list_add(skillCooldown, 300);
ds_list_add(skillTimer_max, 120);
ds_list_add(skillRange, 60);

ds_list_add(skillName, "Auto: Rapid Slash");
ds_list_add(skillCooldown_max, 10);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 40);
ds_list_add(skillRange, 60);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 5);
ds_list_add(skillRange, 60);
