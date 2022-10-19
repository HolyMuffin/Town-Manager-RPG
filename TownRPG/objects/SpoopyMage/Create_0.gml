event_inherited();

orbList = ds_list_create();

//character stats
rarity = 5;
name = "Filler Name";
range = "Ranged";
role = "DPS";
startingX = 0.1;
hp_base = 500;
atk_base = 12;
def_base = 7;
updateBaseStats();

initializeSkills(4);
ds_list_add(skillName, "Reanimate");
ds_list_add(skillCooldown_max, 100);
ds_list_add(skillCooldown, 100);
ds_list_add(skillTimer_max, 50);
ds_list_add(skillRange, 400);

ds_list_add(skillName, "Orb Barrage");
ds_list_add(skillCooldown_max, 450);
ds_list_add(skillCooldown, 450);
ds_list_add(skillTimer_max, 15);
ds_list_add(skillRange, 400);

ds_list_add(skillName, "Auto: Siphon");
ds_list_add(skillCooldown_max, 60);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 20);
ds_list_add(skillRange, 400);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 5);
ds_list_add(skillRange, 400);


