event_inherited();

//boss differences:
bossName = "The Silent";
//

//character stats
hp_base = 1800;
atk_base = 20;
def_base = 12;
updateBaseStats();

resourceDrops = [2, 2, 2];

initializeSkills(7);

ds_list_add(skillName, "Gloves");
ds_list_add(skillCooldown_max, 440);
ds_list_add(skillCooldown, 100);
ds_list_add(skillTimer_max, 110);
ds_list_add(skillRange, 70);

ds_list_add(skillName, "Gun");
ds_list_add(skillCooldown_max, 400);
ds_list_add(skillCooldown, 300);
ds_list_add(skillTimer_max, 65);
ds_list_add(skillRange, 70);

ds_list_add(skillName, "Shotgun");
ds_list_add(skillCooldown_max, 360);
ds_list_add(skillCooldown, 220);
ds_list_add(skillTimer_max, 65);
ds_list_add(skillRange, 70);

ds_list_add(skillName, "Hammer");
ds_list_add(skillCooldown_max, 320);
ds_list_add(skillCooldown, 150);
ds_list_add(skillTimer_max, 65);
ds_list_add(skillRange, 70);

ds_list_add(skillName, "Sword");
ds_list_add(skillCooldown_max, 280);
ds_list_add(skillCooldown, 100);
ds_list_add(skillTimer_max, 65);
ds_list_add(skillRange, 70);

ds_list_add(skillName, "Blades");
ds_list_add(skillCooldown_max, 150);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 65);
ds_list_add(skillRange, 200);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 5);
ds_list_add(skillRange, 70);