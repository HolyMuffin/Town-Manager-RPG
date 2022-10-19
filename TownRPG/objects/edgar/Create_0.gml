event_inherited();

//character stats
rarity = 4;
name = "Edgar";
range = "Ranged";
role = "Summoner";
startingX = 0.1;
hp_base = 200;
atk_base = 12;
def_base = 7;
movespdMulti = 1;
updateBaseStats();

initializeSkills(2);

ds_list_add(skillName, "Auto: Light Ball");
ds_list_add(skillCooldown_max, 90);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 25);
ds_list_add(skillRange, 400);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 3);
ds_list_add(skillRange, 400);

skillDescriptions = ["Passive: Summons skeletons at the beginning of combat\nIf items are Attack oriented or neutral, summon 4 Skeleton Mages with ", "% of Attack", "Passive: If items are Defense oriented, summon 3 Skeleton Shielders with ", "% of Defence\nShielders have 3 Bastion and reform 5 seconds after death", "Passive: If items are Health oriented, summon a Revenant with ", "% of Health\nThe Revenant has 50 Lifesteal, takes damage for its summoner, and applies 20 Wither to all enemies while alive"];
skillBase = [45, 45, 45];
skillGrowth = [5, 5, 5];
skillScaling = [skillCalc(0), skillCalc(1), skillCalc(2)];
