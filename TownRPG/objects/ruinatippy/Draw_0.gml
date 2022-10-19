if (currentSkill = "5") {
	draw_sprite_ext(SpriteTippy, 0, x_, y_, xscale, 1, angle_, image_blend, image_alpha);
	drawUnitEffects();
	drawHealthBar();
} else
	event_inherited();
