event_inherited();

//character stats
rarity = 3;
name = "Boofus";
range = "Melee";
role = "DPS";
startingX = 0.4;
hp_base = 450;
atk_base = 20;
def_base = 6;
updateBaseStats();
doofusSquad = true;
precision = 10;

initializeSkills(3);

ds_list_add(skillName, "AOE Slash");
ds_list_add(skillCooldown_max, 230);
ds_list_add(skillCooldown, 200);
ds_list_add(skillTimer_max, 60);
ds_list_add(skillRange, 100);

ds_list_add(skillName, "Auto: Pierce");
ds_list_add(skillCooldown_max, 95);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 40);
ds_list_add(skillRange, 100);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 3);
ds_list_add(skillRange, 100);


skillDescriptions = ["Active: Swings in a wide arc, dealing ", "% of Attack to enemies in front", "Passive: +", " Precision\nThird Lieutenant of the 17th Company"];
skillBase = [110, 8];
skillGrowth = [15, 2];
skillScaling = [skillCalc(0), skillCalc(1)];
