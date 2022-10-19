event_inherited();

//character stats
rarity = 4;
name = "Kali";
range = "Ranged";
role = "Support";
role2 = "/Healer";
startingX = 0;
hp_base = 350;
atk_base = 14;
def_base = 7;
spiritList = ds_list_create();
updateBaseStats();

initializeSkills(3);
ds_list_add(skillName, "Heal Command");
ds_list_add(skillCooldown_max, 250);
ds_list_add(skillCooldown, 150);
ds_list_add(skillTimer_max, 120);
ds_list_add(skillRange, 450);

ds_list_add(skillName, "Auto: Shot");
ds_list_add(skillCooldown_max, 60);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 15);
ds_list_add(skillRange, 450);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 5);
ds_list_add(skillRange, 450);

skillDescriptions = ["Active: ", " Fillter Text", "Active: ", " Filler Text", "Passive: Spirits ", " Filler Text"];
skillBase = [19, 8, 5];
skillGrowth = [1, 2, 1];
skillScaling = [skillCalc(0), skillCalc(1), skillCalc(2)];