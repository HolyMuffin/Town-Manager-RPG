if (currentSkill == "Icy Wind") {
	draw_set_alpha(0.15);
	draw_set_color(make_color_rgb(215, 215, 255));
	draw_rectangle(0, dungeon.y, global.dungeonWidth, dungeon.y+global.dungeonHeight, false);
	draw_set_alpha(1);
}
event_inherited();