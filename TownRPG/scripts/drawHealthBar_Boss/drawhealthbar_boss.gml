function drawHealthBar_Boss(boss) {
	draw_set_color(c_red);
	draw_rectangle(300, y+30, 500, y+50, false);
	
	var hppercent = boss.hp/boss.hp_max
	if (hppercent < 0) 
		hppercent = 0;	
	
	
	if (boss.healedCounter >= 1)
		draw_set_color(c_lime);
	else if (boss.burned >= boss.hp_max/500)
		draw_set_color(c_orange);	
	else if (boss.poisoned >= boss.hp_max/500)
		draw_set_color(global.c_poison);
	else
		draw_set_color(c_green);
	
	draw_rectangle(300, y+30, 300+(200*hppercent), y+50, false);
	
	draw_set_color(c_black);
	draw_set_font(-1);
	draw_text(320, y+30, boss.bossName)
}