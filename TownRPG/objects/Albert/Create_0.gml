event_inherited();
//character stats
rarity = 3;
name = "Albert";
range = "Melee"
role = "Tank";
startingX = 0.7;
hp_base = 500;
atk_base = 12;
def_base = 9;
updateBaseStats();
movespdMulti = 1.2;
bastion = 10;

initializeSkills(3);

ds_list_add(skillName, "Shield");
ds_list_add(skillCooldown_max, 650);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 10);
ds_list_add(skillRange, 1000);

ds_list_add(skillName, "Auto: Slash");
ds_list_add(skillCooldown_max, 80);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 40);
ds_list_add(skillRange, 85);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 3);
ds_list_add(skillRange, 85);

skillDescriptions = ["Active: Gains a shield, blocking up to ", "% of Health", "Passive: +", " Bastion (all allies take X% less damage)"];
skillBase = [22, 8];
skillGrowth = [3, 2];
skillScaling = [skillCalc(0), skillCalc(1)];



