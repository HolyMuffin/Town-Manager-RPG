/*if (currentSkill == "Whirlpool" && skillTimer > 0 && skillTimer < 180) {
	draw_set_color(c_grey);
	draw_set_alpha(0.3);
	draw_rectangle(x, y-70, x+800*image_xscale, y-30, true);
	draw_rectangle(x, y-70, x+800*min(1, 1-skillTimer/180)*image_xscale, y-30, false);
	draw_set_alpha(1);
}*/
draw_self();
with(dungeon) {
	drawHealthBar_Boss(boss);
}
 
 
 
 
var dungeonX_mid =  global.dungeonWidth/3;
var dungeonY_mid = dungeon.y+global.dungeonHeight_Sky+global.dungeonHeight_Ground/2;
draw_circle(dungeonX_mid, dungeonY_mid, 3, false);;
draw_circle(x+sprite_width/4, y-sprite_height*2/3, 3, false)