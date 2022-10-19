function drawUnitEffects() {
	if (stunTimer > 0)
		draw_sprite(SpriteStunned, floor(stunTimer/4), x, y-sprite_height+5);
	if (defendCounter > 0)
		draw_sprite_ext(sprite_index, image_number, x, y, image_xscale, image_yscale, image_angle, c_grey, 1);
} 