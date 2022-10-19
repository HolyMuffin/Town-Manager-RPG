if (instance_exists(source)) {
	draw_set_alpha(source.clockCounter/13*0.45+source.doomCounter/300*0.48);
	draw_set_color(make_color_hsv(0, 0, 255-35*source.doomCounter/300));
	draw_rectangle(0, dungeon.y, global.dungeonWidth, dungeon.y+global.dungeonHeight, false);
	draw_set_alpha(1);
}