event_inherited();
//character stats
rarity = 4;
name = "Hemlock";
range = "Ranged"
role = "Support";
startingX = 0.2;
hp_base = 400;
atk_base = 14;
def_base = 7;
updateBaseStats();
movespdMulti = 1;
poison = 10;
potionCounter = 0;

initializeSkills(3);

ds_list_add(skillName, "Suspicious Brew");
ds_list_add(skillCooldown_max, 800);
ds_list_add(skillCooldown, 400);
ds_list_add(skillTimer_max, 30);
ds_list_add(skillRange, 1000);

ds_list_add(skillName, "Auto: Potion Lob");
ds_list_add(skillCooldown_max, 210);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 30);
ds_list_add(skillRange, 140);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 3);
ds_list_add(skillRange, 140);

skillDescriptions = ["Every third attack leaves a cloud for ", " seconds that applies and amplifies Poison on enemies within it. The cloud ignites when it contacts an enemy suffering Burn, converting its effects to Burn", "Active: Distribute brews to all party members, granting them +", " Potency for 12 seconds\n\nAlchemist is not legally responsible for any side effects that may occur", "Passive: +10 Poison\nGlobal: A potion stand is unlocked in town. All characters now enter dungeons with a health potion that heals ", "% of their Health the first time they drop below 30% Health"];
skillBase = [2.4, 18, 9];
skillGrowth = [0.1, 2, 1];
skillScaling = [skillCalc(0), skillCalc(1), skillCalc(2)];



