event_inherited();

//character stats
rarity = 4;
name = "Captain Rufus";
range = "Ranged";
role = "Support";
startingX = 0;
hp_base = 450;
atk_base = 15;
def_base = 7;
updateBaseStats();

initializeSkills(4);
ds_list_add(skillName, "Precision Bolt");
ds_list_add(skillCooldown_max, 450);
ds_list_add(skillCooldown, 250);
ds_list_add(skillTimer_max, 200);
ds_list_add(skillRange, 220);

ds_list_add(skillName, "Piercing Bolts");
ds_list_add(skillCooldown_max, 220);
ds_list_add(skillCooldown, 100);
ds_list_add(skillTimer_max, 90);
ds_list_add(skillRange, 220);

ds_list_add(skillName, "Auto: Shot");
ds_list_add(skillCooldown_max, 110);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 30);
ds_list_add(skillRange, 220);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 5);
ds_list_add(skillRange, 220);

skillDescriptions = ["Active: Aims for 1.5 seconds, then fires a powerful bolt, dealing ", "% of Attack to an enemy", "Active: Fires 3 armor piercing bolts at the enemy with the highest Defense that deal ", "% of Attack as damage and inflict 5 Shred", "Passive: Grants allies +", " Precision. Members of the 17th Company also gain 1.5x that much Vitality\nCaptain of the 17th Company"];
skillBase = [190, 27, 9];
skillGrowth = [20, 3, 1];
skillScaling = [skillCalc(0), skillCalc(1), skillCalc(2)];
