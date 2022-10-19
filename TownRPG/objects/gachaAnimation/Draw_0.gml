draw_self();
if (firstCounter >= 100 && secondCounter <= 50)
	draw_sprite(SpriteUPSBox, 0, x, y);
if (secondCounter > 50)
	draw_sprite(menu.selectedChar.sprite_index, 0, x, y);
if (firstCounter <= 215)
	draw_sprite(SpriteUPSTruck, 0, x+180-1.8*min(200, firstCounter), y);
	
