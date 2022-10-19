event_inherited();

//character stats
hp_base = 400;
atk_base = 12;
def_base = 8;
updateBaseStats();
x_ = 0;
y_ = 0;
resourceDrops = [2, 2, 2];

initializeSkills(2);

slamTime = 24;
ds_list_add(skillName, "Auto: Slam");
ds_list_add(skillCooldown_max, 100);
ds_list_add(skillCooldown, random(100));
ds_list_add(skillTimer_max, slamTime);
ds_list_add(skillRange, 85);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 5);
ds_list_add(skillRange, 85);