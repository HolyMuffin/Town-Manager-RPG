event_inherited();
//character stats
rarity = 5;
name = "Fern";
range = "Melee"
role = "DPS";
startingX = 0.5;
hp_base = 550;
atk_base = 20;
def_base = 8;
burnResist = 50;
updateBaseStats();
initializeSkills(4);

ds_list_add(skillName, "Overdrive");
ds_list_add(skillCooldown_max, 15*room_speed);
ds_list_add(skillCooldown, 10*room_speed);
ds_list_add(skillTimer_max, 2);
ds_list_add(skillRange, 75);

ds_list_add(skillName, "AOE Slash");
ds_list_add(skillCooldown_max, 250);
ds_list_add(skillCooldown, 100);
ds_list_add(skillTimer_max, 40);
ds_list_add(skillRange, 75);

ds_list_add(skillName, "Auto: Slash");
ds_list_add(skillCooldown_max, 70);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 40);
ds_list_add(skillRange, 75);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 3);
ds_list_add(skillRange, 75);

skillDescriptions = ["", "", "Passive: Flame aura that inflicts ", "% of Attack per second as burn to all characters within. Enemies recieve 70% more Burn", "Active: For 8 seconds, +40% Cooldown Rate, attacks deal additional damage equal to ", "% of Burn, and inflict Burn on self equal to 5% of Current Health per second", "Passive: +", "% Burn Resistance. Inflicting Burn on allies also grants +50% Frost Resistance for 8 seconds (does not stack)"];
skillBase = [100, 63, 9, 45];
skillGrowth = [10, 7, 1, 5];
skillScaling = [skillCalc(0), skillCalc(1), skillCalc(2), skillCalc(3)];



