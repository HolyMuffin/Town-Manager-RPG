draw_self();
with(dungeon) {
	drawHealthBar_Boss(boss);
}

draw_set_alpha(0.5);
draw_set_color(c_ltgrey);
draw_circle(global.dungeonWidth/2, dungeon.y+global.dungeonHeight_Sky/2, 40, false);
draw_set_color(c_black);
draw_circle(global.dungeonWidth/2, dungeon.y+global.dungeonHeight_Sky/2, 35.5, false);
draw_set_alpha(0.5);
draw_set_color(make_color_rgb(30, 220, 30));
draw_circle(global.dungeonWidth/2, dungeon.y+global.dungeonHeight_Sky/2, 32, false);
draw_set_alpha(0.5);
draw_set_color(make_color_rgb(20, 90, 20));
draw_circle(global.dungeonWidth/2, dungeon.y+global.dungeonHeight_Sky/2, 26, false);
draw_set_color(c_black);
var rad = 30;
var counter = clockCounter+(1-ds_list_find_value(skillCooldown, 0)/clockTime);
if (currentSkill == "Auto: Faith" && skillTimer <= 1)
	counter--;
var ang = 90-counter*360/13;
if (dungeon.dungeonState != 2)
	ang = 90;
draw_line_width(global.dungeonWidth/2, dungeon.y+global.dungeonHeight_Sky/2, global.dungeonWidth/2+rad*dcos(ang), dungeon.y+global.dungeonHeight_Sky/2-rad*dsin(ang), 3);
draw_set_alpha(1);