event_inherited();

//character stats
rarity = 3;
name = "Filler Name";
range = "Melee";
role = "Burst";
startingX = 0.4;
hp_base = 180;
atk_base = 11;
def_base = 9;
movespdMulti = 1;
updateBaseStats();

initializeSkills(2);

ds_list_add(skillName, "Auto: Slash");
ds_list_add(skillCooldown_max, 70);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 40);
ds_list_add(skillRange, 85);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 3);
ds_list_add(skillRange, 85);


