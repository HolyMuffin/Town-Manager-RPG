event_inherited();
//character stats
rarity = 4;
name = "Astra";
range = "Ranged"
role = "Healer";
startingX = 0.2;
hp_base = 500;
atk_base = 15;
def_base = 10;
updateBaseStats();

initializeSkills(4);

ds_list_add(skillName, "Team Shift");
ds_list_add(skillCooldown_max, 600);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 60);
ds_list_add(skillRange, 1000);

ds_list_add(skillName, "Swap Shift");
ds_list_add(skillCooldown_max, 330);
ds_list_add(skillCooldown, 30);
ds_list_add(skillTimer_max, 60);
ds_list_add(skillRange, 280);


ds_list_add(skillName, "Auto: Bolt");
ds_list_add(skillCooldown_max, 140);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 25);
ds_list_add(skillRange, 280);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 3);
ds_list_add(skillRange, 280);

skillDescriptions = ["Active: Swap the locations of the closest and furthest enemies and apply ", " Weaken to both for 5 seconds", "Active: Shift Melee allies forward 120 units.\n\nGrant Ranged allies +", " Vitality, and Shifts them to the opposite side of the dungeon if they drop below 40% Health", "Passive: At the beginning of combat, reset all cooldowns\n\nHeal allies and damage enemies equal to ", "% of Attack when Shifting them"];
skillBase = [9, 9, 180];
skillGrowth = [1, 1, 20];
skillScaling = [skillCalc(0), skillCalc(1), skillCalc(2)];



