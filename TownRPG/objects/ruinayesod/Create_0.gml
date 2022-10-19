event_inherited();

//character stats
hp_base = 240;
atk_base = 11;
def_base = 6;
updateBaseStats();
movespdMulti = 1;
cogAngle = 0;
rngRange = irandom(30);
particle = particleSmoke();

resourceDrops = [2, 2, 2];

initializeSkills(2);

ds_list_add(skillName, "Auto: Bash");
ds_list_add(skillCooldown_max, 80);
ds_list_add(skillCooldown, random(80));
ds_list_add(skillTimer_max, 45);
ds_list_add(skillRange, 60+rngRange);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 5);
ds_list_add(skillRange, 60+rngRange);
