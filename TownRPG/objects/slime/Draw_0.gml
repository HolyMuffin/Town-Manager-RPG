if (currentSkill = "Auto: Slam") {
	draw_sprite_ext(SpriteSlimeGreen, 0, x_, y_, xscale, 1, image_angle, image_blend, image_alpha);
	drawUnitEffects();
	drawHealthBar();
} else
	event_inherited();
