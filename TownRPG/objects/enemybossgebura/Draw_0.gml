if (castingOnrush) {
	draw_set_color(c_black);
	draw_set_alpha(0.6);
	draw_rectangle(0, dungeon.y, global.dungeonWidth, dungeon.y+global.dungeonHeight, false);
	draw_set_alpha(1);
}
draw_self();
with(dungeon) {
	drawHealthBar_Boss(boss);
}
