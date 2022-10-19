draw_self();
if (char != -1) {
	draw_text(x-120, y-10, "Lv " + string(char.level)+ " " + char.name);
	draw_sprite(char.sprite_index, 0, 320+char.startingX*50, y+char.sprite_height/2);
} else
	draw_text(x-120, y-10, "Empty");
