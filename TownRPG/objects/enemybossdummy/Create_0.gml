event_inherited();

//boss differences:
bossName = "Test Dummy";
dpsList = ds_list_create();
avgDPS = 0;
counter = 0;
wither = 100; //prevent regen
tenacity = 100;
//

//character stats
hp_base = 5000;
atk_base = 0;
def_base = 10;
movespdMulti = 0;
updateBaseStats();

resourceDrops = [2, 2, 2];

initializeSkills(1);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 5);
ds_list_add(skillRange, 1000);