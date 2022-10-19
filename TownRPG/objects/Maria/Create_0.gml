event_inherited();

//character stats
rarity = 3;
name = "Maria";
range = "Ranged";
role = "Healer";
startingX = 0.3;
hp_base = 400;
atk_base = 15;
def_base = 6;
updateBaseStats();
//particle = particleSparkle();

initializeSkills(3);
/* 
ds_list_add(skillName, "Baldmond Bros");
ds_list_add(skillCooldown_max, 700);
ds_list_add(skillCooldown, 100);
ds_list_add(skillTimer_max, 30);
ds_list_add(skillRange, 1000);

ds_list_add(skillName, "Baldmond Beam");
ds_list_add(skillCooldown_max, 400);
ds_list_add(skillCooldown, 300);
ds_list_add(skillTimer_max, 150);
ds_list_add(skillRange, 300);
*/
ds_list_add(skillName, "Group Heal");
ds_list_add(skillCooldown_max, 300);
ds_list_add(skillCooldown, 200);
ds_list_add(skillTimer_max, 30);
ds_list_add(skillRange, 1000);

ds_list_add(skillName, "Auto: Bolt");
ds_list_add(skillCooldown_max, 120);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 25);
ds_list_add(skillRange, 300);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 3);
ds_list_add(skillRange, 300);

skillDescriptions = ["Recites a prayer, healing all allies for ", "% of Attack", "Passive: ", "% increased healing on allies with 50% or less Health"];
skillBase = [126, 63];
skillGrowth = [14, 7];
skillScaling = [skillCalc(0), skillCalc(1)];
