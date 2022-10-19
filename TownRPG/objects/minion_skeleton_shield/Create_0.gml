event_inherited();

//character stats
hp_base = 150;
atk_base = 8;
def_base = 10;
updateBaseStats();
movespdMulti = 1.2;
bastion = 3;

initializeSkills(2);

ds_list_add(skillName, "Auto: Bash");
ds_list_add(skillCooldown_max, 120);
ds_list_add(skillCooldown, irandom(120));
ds_list_add(skillTimer_max, 40);
ds_list_add(skillRange, 60);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 5);
ds_list_add(skillRange, 60);