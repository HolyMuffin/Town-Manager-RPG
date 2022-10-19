event_inherited();

//character stats
hp_base = 400;
atk_base = 15;
def_base = 6;
updateBaseStats();
movespdMulti = 1.2;
frenzy = 8;

resourceDrops = [2, 2, 2];

initializeSkills(2);

ds_list_add(skillName, "Auto: Bullet");
ds_list_add(skillCooldown_max, 110);
ds_list_add(skillCooldown, 75);
ds_list_add(skillTimer_max, 40);
ds_list_add(skillRange, 300);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 5);
ds_list_add(skillRange, 300);
