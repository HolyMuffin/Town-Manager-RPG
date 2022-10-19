draw_self();

if (ds_list_size(global.charactersAvailable) > buttonNumber) {
	var char = ds_list_find_value(global.charactersAvailable, buttonNumber);
	
	draw_sprite(char.sprite_index, 0, x, y+2);
}
