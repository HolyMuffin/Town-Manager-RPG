event_inherited();

//boss differences:
bossName = "Wet Noodle";
tenacity = 100;
//

//character stats
hp_base = 5000;
atk_base = 15;
def_base = 11;
updateBaseStats();
movespdMulti = 0;
particle = particleBubble();

resourceDrops = [2, 2, 2];

initializeSkills(5);

ds_list_add(skillName, "Whirlpool");
ds_list_add(skillCooldown_max, 800);
ds_list_add(skillCooldown, 800);
ds_list_add(skillTimer_max, 150);
ds_list_add(skillRange, 1000);

ds_list_add(skillName, "Bubble Bomb");
ds_list_add(skillCooldown_max, 300);
ds_list_add(skillCooldown, 300);
ds_list_add(skillTimer_max, 70);
ds_list_add(skillRange, 1000);

ds_list_add(skillName, "Auto: Bite");
ds_list_add(skillCooldown_max, 120);
ds_list_add(skillCooldown, 120);
ds_list_add(skillTimer_max, 50);
ds_list_add(skillRange, 100);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 5);
ds_list_add(skillRange, 1000);

ds_list_add(skillName, "Bubble Beam");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 150);
ds_list_add(skillRange, -1);