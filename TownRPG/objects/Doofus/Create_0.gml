event_inherited();

//character stats
rarity = 3;
name = "Doofus";
range = "Melee";
role = "Fighter";
startingX = 0.7;
hp_base = 580;
atk_base = 16;
def_base = 8;
updateBaseStats();
movespdMulti = 1.1;
doofusSquad = true;
penetration = 10;

spinCounter = 0;
spinHDirection = 1;
spinVDirection = 0;
initializeSkills(3);

ds_list_add(skillName, "Spin to Win");
ds_list_add(skillCooldown_max, 280);
ds_list_add(skillCooldown, 100);
ds_list_add(skillTimer_max, 200);
ds_list_add(skillRange, 85);

ds_list_add(skillName, "Auto: Slash");
ds_list_add(skillCooldown_max, 75);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 40);
ds_list_add(skillRange, 85);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 3);
ds_list_add(skillRange, 85);


skillDescriptions = ["Active: Spin to wins, dealing ", "% of Attack to nearby enemies 2 times per second", "Passive: +", " Penetration\nFirst Lieutenant of the 17th Company"];
skillBase = [95, 8];
skillGrowth = [15, 2];
skillScaling = [skillCalc(0), skillCalc(1)];
