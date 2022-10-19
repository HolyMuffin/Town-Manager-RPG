event_inherited();

//character stats
rarity = 3;
name = "Agnes";
range = "Ranged";
role = "Burst";
startingX = 0;
hp_base = 450;
atk_base = 18;
def_base = 6;
burn = 10;
updateBaseStats();

initializeSkills(3);
ds_list_add(skillName, "Eruption");
ds_list_add(skillCooldown_max, 150);
ds_list_add(skillCooldown, 50);
ds_list_add(skillTimer_max, 20);
ds_list_add(skillRange, 450);

ds_list_add(skillName, "Auto: Bolt");
ds_list_add(skillCooldown_max, 60);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 15);
ds_list_add(skillRange, 450);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 5);
ds_list_add(skillRange, 450);

skillDescriptions = ["Active: While above 40% health, wildly bombs the enemies with fireballs. Fireballs deal", "% of Attack", "Passive: +", " Burn\n50% of Burn is also applied to self"];
skillBase = [72, 8];
skillGrowth = [8, 2];
skillScaling = [skillCalc(0), skillCalc(1)];
