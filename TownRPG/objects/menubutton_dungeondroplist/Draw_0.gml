
if (position_meeting(mouse_x, mouse_y, id)) {
	
	draw_set_color(c_ltgrey);
	draw_rectangle(290, 750, 631, 834, false);
	draw_set_color(c_white);
	
	for(var i = 0; i < array_length(menu.selectedDungeon.dropTable); i++) {
		var equipment = menu.selectedDungeon.dropTable[i];
		var icon = instance_find(equipment, 0).icon;
		draw_sprite(SpriteEquipBackground, 0, 290 + 20 + 24 + (20+48)*i, 750 + 24);
		draw_sprite(icon, 0, 290 + 20 + 24 + (20+48)*i, 750 + 24);
	}
}
draw_self();