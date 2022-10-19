x = 66*image_xscale*405/1080;
y = camera_get_view_y(global.cam)+27*image_yscale;
if (global.dungeonSlots[buttonNumber].running)
	sprite_index = SpriteEquipBackground;
else
	sprite_index = -1;
	
if(camera_get_view_y(global.cam) == 0) {
	image_xscale = 1;
	image_yscale = 1;
} else {
	image_xscale = 405/1080;
	image_yscale = 405/1080;
}