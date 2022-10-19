if (currentSkill == "Auto: AOE Smash" && skillTimer > 120 && skillTimer < 220) {
	draw_set_color(c_grey);
	draw_set_alpha(0.3);
	draw_rectangle(x, y-45, x+100*image_xscale, y+30, true);
	draw_rectangle(x, y-45, x+100*min(1, 1-(skillTimer-120)/100)*image_xscale, y+30, false);
	draw_set_alpha(1);
}
draw_self();
with(dungeon) {
	drawHealthBar_Boss(boss);
}
 