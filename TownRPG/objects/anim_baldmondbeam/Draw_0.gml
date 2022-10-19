draw_self();
if (instance_exists(source))
	draw_sprite_ext(SpriteBaldmondBeam, 0, source.x, source.y-source.sprite_height/2, 1, image_yscale, image_angle, c_white, image_alpha);

/*


	draw_sprite_ext(SpriteBaldmondBeam, 1, x+xOffset, y-yOffset, stretch, image_yscale, image_angle, c_white, image_alpha);
if (stretch >= 16)
	draw_sprite_ext(SpriteBaldmondBeam, 1, x, y, 16, image_yscale, image_angle, c_white, image_alpha);
*/
//draw_self();