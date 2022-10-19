draw_self();

draw_set_halign(fa_center);
draw_text(x, y-sprite_height/2+10, "Gacha Menu");
draw_set_halign(fa_left);

draw_set_color(c_ltgrey);
draw_rectangle(490, 350, 831, 834, false);
draw_set_color(c_grey);
draw_rectangle(700, 355, 810, 530, false);
if (selectedChar != -1) {
	//name
	draw_set_color(c_black);
	draw_text(540, 360, selectedChar.name);
	//role
	draw_text(540, 395, selectedChar.role + selectedChar.role2);
	//level
	draw_set_color(c_black);
	draw_text(540, 420, "Level " + string(selectedChar.level));
	//xp bar
	draw_set_color(c_dkgrey);
	draw_rectangle(505, 445, 575, 453, false);
	draw_set_color(c_yellow);
	draw_rectangle(505, 450, 505+(70*selectedChar.xp/selectedChar.xpReq), 458, false);
		
	//sprite
	draw_sprite_ext(selectedChar.sprite_index, 0, 755, 520, 2, 2, 0, c_white, 1);
		
	//rarity
	draw_set_halign(fa_center);
	draw_set_color(c_yellow);
	var rarity = "";
	for (var i = 0; i < selectedChar.rarity; i++) {
		rarity = rarity + "*";
	}
	draw_text(755, 355, rarity);
	draw_set_halign(fa_left);
	draw_set_color(c_black);
		
	//skill info
	if (selectedSkill != -1 && selectedSkill < selectedChar.rarity-1) {
		draw_text_ext(500, 650, selectedChar.skillDescriptions[selectedSkill*2] + string(selectedChar.skillScaling[selectedSkill]) + selectedChar.skillDescriptions[selectedSkill*2+1], -1, 300);
	}
}