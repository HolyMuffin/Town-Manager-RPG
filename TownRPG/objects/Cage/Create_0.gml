event_inherited();

//character stats
hp_base = 300;
atk_base = 0;
def_base = 10;
updateBaseStats();
tenacity = 1;
movespdMulti = 0;
xpMultiplier = 0;
resourceDrops = [0, 0, 0];

back = instance_create_depth(x, y, 0, CageBack);
back.source = id;


initializeSkills(1);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 5);
ds_list_add(skillRange, 70);