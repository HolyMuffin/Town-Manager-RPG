event_inherited();
//character stats
rarity = 5;
name = "Glaice";
range = "Ranged"
role = "Support";
startingX = 0.2;
hp_base = 550;
atk_base = 20;
def_base = 8;
frostResist = 50;
updateBaseStats();
initializeSkills(5);
rainTarget = -1;

ds_list_add(skillName, "Icy Wind");
ds_list_add(skillCooldown_max, 550);
ds_list_add(skillCooldown, 400);
ds_list_add(skillTimer_max, 120);
ds_list_add(skillRange, 1000);

ds_list_add(skillName, "Frost Shield");
ds_list_add(skillCooldown_max, 500);
ds_list_add(skillCooldown, 150);
ds_list_add(skillTimer_max, 40);
ds_list_add(skillRange, 1000);

ds_list_add(skillName, "Shard Shower");
ds_list_add(skillCooldown_max, 150);
ds_list_add(skillCooldown, 120);
ds_list_add(skillTimer_max, 100);
ds_list_add(skillRange, 240);

ds_list_add(skillName, "Auto: Bolt");
ds_list_add(skillCooldown_max, 150);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 40);
ds_list_add(skillRange, 240);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 3);
ds_list_add(skillRange, 240);

skillDescriptions = ["Active: Ice crystals rain down around random target enemy that deal ", "% of Attack and inflict 3 Frost", "Active: give the lowest health ally a buff for 4 seconds that grants ", " Ward but also inflicts 20 Frost. Inflict 5 Frost on enemies that hit them", "Active: Active: Conjures an icy gust of wind that inflicts ", " Frost to all characters. Enemies are also dealt 80% of Attack and recieve 30% more Frost", "Passive: +", "% Frost Resistance. Inflicting Frost on allies also grants +1% Burn Resistance per Frost for 8 seconds (Frost lowers damage dealt and cooldown recovery rate by 0.5%, and lasts 4 seconds)"];
skillBase = [27, 18, 18, 45];
skillGrowth = [3, 2, 2, 5];
skillScaling = [skillCalc(0), skillCalc(1), skillCalc(2), skillCalc(3)];



