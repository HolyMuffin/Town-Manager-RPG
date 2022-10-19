draw_self();
if (image_blend != c_white)
	draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, make_color_rgb(0, 255, 255), 0.35);