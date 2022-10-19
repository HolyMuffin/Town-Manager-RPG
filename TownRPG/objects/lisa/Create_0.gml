event_inherited();

//character stats
rarity = 3;
name = "Lisa";
range = "Ranged";
role = "DPS";
startingX = 0;
hp_base = 420;
atk_base = 21;
def_base = 6;
penetration = 10;
updateBaseStats();
ward = 10;

initializeSkills(3);
ds_list_add(skillName, "Flurry Shot");
ds_list_add(skillCooldown_max, 220);
ds_list_add(skillCooldown, 150);
ds_list_add(skillTimer_max, 90);
ds_list_add(skillRange, 450);

ds_list_add(skillName, "Auto: Shot");
ds_list_add(skillCooldown_max, 60);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 15);
ds_list_add(skillRange, 450);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 5);
ds_list_add(skillRange, 450);

skillDescriptions = ["Active: Fires a flurry of arrows, dealing ", "% of Attack to an enemy 7 times", "Passive: +", " Penetration (ignore X% of Defence)"];
skillBase = [54, 8];
skillGrowth = [6, 2];
skillScaling = [skillCalc(0), skillCalc(1)];
