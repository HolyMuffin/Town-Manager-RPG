event_inherited();

//boss differences:
bossName = "The Faithful";
tenacity = 100;
//

//character stats
hp_base = 1150;
atk_base = 8;
def_base = 8;
updateBaseStats();
thorns = 10;
healDecay = 1;
clockCounter = 0;
doomCounter = 0;

resourceDrops = [2, 2, 2];

initializeSkills(2);

clockTime = 230;
ds_list_add(skillName, "Auto: Faith");
ds_list_add(skillCooldown_max, clockTime);
ds_list_add(skillCooldown, clockTime);
ds_list_add(skillTimer_max, 1);
ds_list_add(skillRange, 1000);

ds_list_add(skillName, "Wait");
ds_list_add(skillCooldown_max, 0);
ds_list_add(skillCooldown, 0);
ds_list_add(skillTimer_max, 5);
ds_list_add(skillRange, 1000);
