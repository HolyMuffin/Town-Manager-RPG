event_inherited();

//boss differences:
bossName = "Emi";
fistTest = false;
//

//character stats
hp_base = 500;
atk_base = 15;
def_base = 9;
movespdMulti = 0.15;
updateBaseStats();

resourceDrops = [2, 2, 2];

initializeSkills(3);
waveDelay = 90;
ds_list_add(skillName, "Rain");
ds_list_add(skillCooldown_max, 500);
ds_list_add(skillCooldown, 220);
ds_list_add(skillTimer_max, 400);
ds_list_add(skillRange, 150);

ds_list_add(skillName, "Auto: AOE Smash");
ds_list_add(skillCooldown_max, 150);
ds_list_add(skillCooldown, 80);
ds_list_add(skillTimer_max, 230);
ds_list_add(skillRange, 70);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 5);
ds_list_add(skillRange, 70);