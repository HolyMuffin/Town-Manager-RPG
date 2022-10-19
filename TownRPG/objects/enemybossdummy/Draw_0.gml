draw_self();
with(dungeon) {
	drawHealthBar_Boss(boss);
}

draw_text(global.dungeonWidth/2-100, y-200, "Average DPS: " + string(avgDPS));