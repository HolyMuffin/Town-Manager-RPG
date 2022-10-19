event_inherited();

//character stats
rarity = 4;
name = "Anvil";
range = "Melee";
role = "Tank";
startingX = 1;
hp_base = 600;
atk_base = 11;
def_base = 10;
movespdMulti = 1.25;
bastion = 15;
updateBaseStats();


particle = particleFlamethrower();

initializeSkills(4);

ds_list_add(skillName, "Flamethrower");
ds_list_add(skillCooldown_max, 250);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 90);
ds_list_add(skillRange, 80);

ds_list_add(skillName, "Shield");
ds_list_add(skillCooldown_max, 650);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 10);
ds_list_add(skillRange, 1000);

ds_list_add(skillName, "Auto: Hammer");
ds_list_add(skillCooldown_max, 180);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 50);
ds_list_add(skillRange, 70);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 3);
ds_list_add(skillRange, 70);

skillDescriptions = ["Active: Gains a shield, blocking up to ", "% of Health", "Active: Spews flames in a cone, applying ", "% of Attack as Burn over the duration.", "Passive: +", " Bastion\nAutoattacks briefly stun"];
skillBase = [140, 470, 12];
skillGrowth = [10, 30, 3];
skillScaling = [skillCalc(0), skillCalc(1), skillCalc(2)];
