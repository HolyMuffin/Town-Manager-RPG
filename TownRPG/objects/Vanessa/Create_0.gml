event_inherited();

//character stats
rarity = 4;
name = "Vanessa";
range = "Melee";
role = "DPS";
startingX = 0.7;
hp_base = 500;
atk_base = 12;
def_base = 7;
movespdMulti = 1.2;
fury = 10;
vengeance = 10;
skillChoice = "";
updateBaseStats();

initializeSkills(4);

ds_list_add(skillName, "Blood Rage");
ds_list_add(skillCooldown_max, 2000);
ds_list_add(skillCooldown, 1);
ds_list_add(skillTimer_max, 30);
ds_list_add(skillRange, 500);

ds_list_add(skillName, "Axe Throw/Slash");
ds_list_add(skillCooldown_max, 180);
ds_list_add(skillCooldown, 30);
ds_list_add(skillTimer_max, 60);
ds_list_add(skillRange, 700);

ds_list_add(skillName, "Auto: Slash");
ds_list_add(skillCooldown_max, 70);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 40);
ds_list_add(skillRange, 80);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 3);
ds_list_add(skillRange, 80);


skillDescriptions = ["Active: Throws an axe, dealing ", "% of Attack to an enemy and inflicting 5 Shred\nIf in melee range, instead slash enemies in front, dealing equivalent damage plus 10% of their Missing Health", "Active: Calls upon the Blood God for 15 seconds, gaining an Ichor stack each second, and 3 on kill. Ichor stacks last ", " seconds and grant: 2 Fury, 1% lifesteal, and lose 0.2% of Current Health per second", "Passive: +", " Fury and Vengeance.\n\nConvert 5% of Current Health to Shield on melee attack"];
skillBase = [90, 4, 8];
skillGrowth = [10, 1, 2];
skillScaling = [skillCalc(0), skillCalc(1), skillCalc(2)];
