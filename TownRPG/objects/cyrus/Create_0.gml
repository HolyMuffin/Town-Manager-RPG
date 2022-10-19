event_inherited();
//character stats
rarity = 4;
name = "Cyrus";
range = "Melee"
role = "Tank";
role2 = "/Healer";
startingX = 0.8;
hp_base = 650;
atk_base = 10;
def_base = 9;
updateBaseStats();
movespdMulti = 1.2;
bastion = 15;
faith = 0;
faithCounter = 0;
radianceCounter = 0;
initializeSkills(4);

ds_list_add(skillName, "Radiance");
ds_list_add(skillCooldown_max, 1100);
ds_list_add(skillCooldown, 300);
ds_list_add(skillTimer_max, 2);
ds_list_add(skillRange, 70);

ds_list_add(skillName, "Shield Push");
ds_list_add(skillCooldown_max, 250);
ds_list_add(skillCooldown, 100);
ds_list_add(skillTimer_max, 40);
ds_list_add(skillRange, 70);


ds_list_add(skillName, "Auto: Slash");
ds_list_add(skillCooldown_max, 75);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 40);
ds_list_add(skillRange, 70);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 3);
ds_list_add(skillRange, 70);

skillDescriptions = ["Active: Strikes with his shield, dealing ", "% of Attack and Defense to enemies in front, with a 20% chance to briefly stun", " Gain an aura for 5 seconds, healing nearby allies for ", "% of Defense per second and granting 10 Fortify", "Passive: +15 Bastion\nGain a stack of Faith when hit. Every 5 seconds, consume all stacks to heal the lowest health ally for ", "% of Defense, +25% more healing per Faith consumed"];
skillBase = [81, 72, 72];
skillGrowth = [9, 8, 8];
skillScaling = [skillCalc(0), skillCalc(1), skillCalc(2)];



