//boss differences:
bossName = "Chicken Nuggies";
counter = 0;
//

event_inherited();
image_alpha = 0;

//character stats
hp_base = 1000;
atk_base = 10;
def_base = 5;
movespdMulti = 1;
xpMultiplier = 10;
chickenCounter = 0;
spawndelay = 50;
updateBaseStats();

resourceDrops = [2, 2, 2];

initializeSkills(2);

ds_list_add(skillName, "Auto: Peck");
ds_list_add(skillCooldown_max, 110);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 20);
ds_list_add(skillRange, 100);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 5);
ds_list_add(skillRange, 100);