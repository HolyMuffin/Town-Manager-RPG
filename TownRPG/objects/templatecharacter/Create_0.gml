event_inherited();
//character stats
rarity = 3;
name = "Filler Name";
range = "Melee"
role = "Tank";
startingX = 0.5;
hp_base = 500;
atk_base = 10;
def_base = 10;
updateBaseStats();
movespdMulti = 1;

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

skillDescriptions = ["", "", "", ""];
skillBase = [10, 10];
skillGrowth = [1, 1];
skillScaling = [skillCalc(0), skillCalc(1)];



