event_inherited();

//character stats
rarity = 3;
name = "Willow";
range = "Ranged";
role = "Support";
startingX = 0;
hp_base = 0;
atk_base = 0;
def_base = 0;
updateBaseStats();

initializeSkills(1);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 5);
ds_list_add(skillRange, 1000);

skillDescriptions = ["Passive: The ally with the highest Attack gains ", "% of all stats on equipped items", "Passive: Buffed target gains ", " Lifesteal\n\nThis unit is permanently dead"];
skillBase = [30, 10];
skillGrowth = [0, 0];
skillScaling = [skillCalc(0), skillCalc(1)];
