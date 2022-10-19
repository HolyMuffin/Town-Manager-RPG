event_inherited();

//character stats
rarity = 5;
name = "Sylvia";
range = "Melee";
role = "Fighter";
startingX = 0.65;
hp_base = 150;
atk_base = 0;//24;
def_base = 5;
movespdMulti = 1.2;
bladeInUse = false;
usingBlade = false;
//tempo = 100;
updateBaseStats();

initializeSkills(4);

ds_list_add(skillName, "Recover");
ds_list_add(skillCooldown_max, 700);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 105);
ds_list_add(skillRange, -1);

ds_list_add(skillName, "AOE Slash");
ds_list_add(skillCooldown_max, 180);
ds_list_add(skillCooldown, 100);
ds_list_add(skillTimer_max, 70);
ds_list_add(skillRange, 85);

ds_list_add(skillName, "Auto: Slash");
ds_list_add(skillCooldown_max, 50);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 40);
ds_list_add(skillRange, 85);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 3);
ds_list_add(skillRange, 85);