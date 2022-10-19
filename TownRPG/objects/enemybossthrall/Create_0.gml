event_inherited();

//boss differences:
bossName = "Risen Thrall";
counter = 0;
image_alpha = 0;
tenacity = 100;
//

//character stats
hp_base = 1200;
atk_base = 22;
def_base = 8;
movespdMulti = 0.2;
updateBaseStats();

resourceDrops = [2, 2, 2];

initializeSkills(2);
ds_list_add(skillName, "Auto: AOE Smash");
ds_list_add(skillCooldown_max, 180);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 180);
ds_list_add(skillRange, 80);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 5);
ds_list_add(skillRange, 80);