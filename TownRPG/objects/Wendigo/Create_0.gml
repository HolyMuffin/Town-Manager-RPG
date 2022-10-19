event_inherited();

//character stats
rarity = 3;
name = "Wendigo";
range = "Melee";
role = "???";
startingX = 0.7;
hp_base = 700;
atk_base = 15;
def_base = 10;
updateBaseStats();
movespdMulti = 1.2;
alone = false;
vitality = 10;
lifesteal = 10;
initializeSkills(3);

ds_list_add(skillName, "AOE Claw");
ds_list_add(skillCooldown_max, 180);
ds_list_add(skillCooldown, 120);
ds_list_add(skillTimer_max, 35);
ds_list_add(skillRange, 85);

ds_list_add(skillName, "Auto: Claw");
ds_list_add(skillCooldown_max, 80);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 35);
ds_list_add(skillRange, 85);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 3);
ds_list_add(skillRange, 85);

skillDescriptions = ["Slashes forward, dealing ", "% of Attack to enemies in front", "Passive: +", " Vitality and Lifesteal.\nSignificantly stronger when alone"];
skillBase = [100, 8];
skillGrowth = [20, 2];
skillScaling = [skillCalc(0), skillCalc(1)];
