event_inherited();

//character stats
rarity = 3;
name = "Goofus";
range = "Melee";
role = "Fighter";
startingX = 1;
hp_base = 630;
atk_base = 10;
def_base = 10;
movespdMulti = 1.2;
doofusSquad = true;
bastion = 10;
updateBaseStats();

initializeSkills(3);

ds_list_add(skillName, "Shield");
ds_list_add(skillCooldown_max, 700);
ds_list_add(skillCooldown, 400);
ds_list_add(skillTimer_max, 10);
ds_list_add(skillRange, 300);

ds_list_add(skillName, "Auto: Bash");
ds_list_add(skillCooldown_max, 110);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 40);
ds_list_add(skillRange, 65);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 3);
ds_list_add(skillRange, 65);


skillDescriptions = ["Active: Grant a shield to all allies, blocking up to ", "% of their Health. 50% increased effect on the 17th Company", "Passive: +", " Bastion\nSecond Lieutenant of the 17th Company"];
skillBase = [9, 9];
skillGrowth = [1, 1];
skillScaling = [skillCalc(0), skillCalc(1)];
