event_inherited();
//boss differences:
bossName = "The Red Mist";
tenacity = 100;
//

//character stats
hp_base = 1200;
atk_base = 20;
def_base = 10;
updateBaseStats();
movespdMulti = 1;
penetration = 50;
lifesteal = 12;



spinDir = 0;
onrushList = ds_list_create();
castingOnrush = false;
onrushTarget = -1;
onrushCounter = 0;

resourceDrops = [2, 2, 2];

initializeSkills(4);

ds_list_add(skillName, "Onrush");
ds_list_add(skillCooldown_max, 600);
ds_list_add(skillCooldown, 600);
ds_list_add(skillTimer_max, 5);
ds_list_add(skillRange, 1000);

ds_list_add(skillName, "Spin to Win");
ds_list_add(skillCooldown_max, 280);
ds_list_add(skillCooldown, 250);
ds_list_add(skillTimer_max, 100);
ds_list_add(skillRange, 85);

ds_list_add(skillName, "Auto: AOE Slash");
ds_list_add(skillCooldown_max, 75);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 55);
ds_list_add(skillRange, 80);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 5);
ds_list_add(skillRange, 80);