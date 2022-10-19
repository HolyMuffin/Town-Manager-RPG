event_inherited();

//boss differences:
bossName = "Renegade Leon";
phase = 0;
goonCount = 3;
tenacity = 100;
//

//character stats
hp_base = 1200;
atk_base = 21;
def_base = 10;
movespdMulti = 1;
updateBaseStats();

resourceDrops = [2, 2, 2];

initializeSkills(2);
ds_list_add(skillName, "Auto: Rapid Fire");
ds_list_add(skillCooldown_max, 120);
ds_list_add(skillCooldown, 120);
ds_list_add(skillTimer_max, 80);
ds_list_add(skillRange, 250);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 5);
ds_list_add(skillRange, 250);