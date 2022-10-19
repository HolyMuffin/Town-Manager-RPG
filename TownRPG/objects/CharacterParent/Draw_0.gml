if (object_get_parent(object_index) == CharacterParent) {
	//going fishing
	if (currentBuilding.object_index == Building_Fishing && buildingTimer > 0 && destinationX != x)
		draw_sprite_ext(SpriteRod, 0, x, y, image_xscale, 1, 0, c_white, 1);
	//currently fishing
	if (currentBuilding.object_index == Building_Fishing && buildingTimer > 0 && destinationX == x && destinationX != currentBuilding.x)
		draw_sprite_ext(SpriteRod, 1, x, y, image_xscale, 1, 0, c_white, 1);

	draw_self();
	drawUnitEffects();

	//going mining
	if (currentBuilding.object_index == Building_Mining && buildingTimer > 0 && buildingTimer < currentBuilding.buildingTimer-50)
		draw_sprite_ext(SpriteMiningHelmet, 0, x, y, image_xscale, 1, 0, c_white, 1);
	//currently mining
	if (currentBuilding.object_index == Building_Mining && buildingTimer > 0 && destinationX == x && destinationX != currentBuilding.x)
		draw_sprite_ext(SpritePickaxeAnimation, floor(townCounter/50)%2, x+15, y, image_xscale, 1, 0, c_white, 1);

	if (location == 2 || hp < hp_max) {
		drawHealthBar();
		drawXPBar(); 
		draw_set_color(c_white);
		draw_set_font(Smol);
		var w = abs(sprite_width)-abs(sprite_width)%10;
		draw_text(x-w/2,y-sprite_height-16,"Lv " + string(level) );
	}
} else {
	event_perform_object(EnemyParent,  ev_draw, 0);
}