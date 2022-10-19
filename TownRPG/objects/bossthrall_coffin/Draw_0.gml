draw_set_color(c_black);
if (counter <= 300)
	draw_set_alpha(min(1/4, (counter+300-dungeon.walkTimer)/2000));
else {
	var diff = 200;
	draw_set_alpha((300+diff-counter)/(diff*4));
}
//draw_rectangle(0, dungeon.y, global.dungeonWidth, dungeon.y+global.dungeonHeight, false);
draw_rectangle(0, dungeon.y, global.dungeonWidth, dungeon.y+global.dungeonHeight, false);
draw_self();
draw_set_alpha(1);