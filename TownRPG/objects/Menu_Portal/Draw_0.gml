draw_self();

if (currentMenu == "Main Menu") {
	draw_set_color(c_ltgrey);
	draw_rectangle(290, 385, 631, 834, false);
	draw_sprite_stretched(selectedDungeon.background, 0, 290, 385, 341, 449);
	for(var i = 0; i < 4; i++) {
		draw_rectangle(640, 391 + i*115, 1079, 481 + i*115, true);
	}
}

if (currentMenu == "Character Select") {
	draw_set_color(c_ltgrey);
	draw_rectangle(290, 350, 631, 834, false);
	draw_set_color(c_grey);
	draw_rectangle(500, 355, 610, 530, false);
	if (selectedChar != -1) {
		//name
		draw_set_color(c_black);
		draw_text(305, 360, selectedChar.name);
		//role
		draw_text(305, 395, selectedChar.role + selectedChar.role2);
		//level
		draw_set_color(c_black);
		draw_text(305, 420, "Level " + string(selectedChar.level));
		//xp bar
		draw_set_color(c_dkgrey);
		draw_rectangle(305, 445, 375, 453, false);
		draw_set_color(c_yellow);
		draw_rectangle(305, 450, 305+(70*selectedChar.xp/selectedChar.xpReq), 458, false);
		
		
		//sprite
		draw_sprite_ext(selectedChar.sprite_index, 0, 555, 520, 2, 2, 0, c_white, 1);
		//rarity
		draw_set_halign(fa_center);
		draw_set_color(c_yellow);
		var rarity = "";
		for (var i = 0; i < selectedChar.rarity; i++) {
			rarity = rarity + "*";
		}
		draw_text(555, 355, rarity);
		draw_set_halign(fa_left);
		draw_set_color(c_black);
		
		
		//skill info
		if (selectedSkill != -1 && selectedSkill < selectedChar.rarity-1) {
			draw_text_ext(300, 650, selectedChar.skillDescriptions[selectedSkill*2] + string(selectedChar.skillScaling[selectedSkill]) + selectedChar.skillDescriptions[selectedSkill*2+1], -1, 300);
		}
	}
	
}


if (currentMenu == "Equipment Select") {
	draw_set_color(c_ltgrey);
	draw_rectangle(290, 350, 631, 834, false);
	draw_set_color(c_grey);
	draw_rectangle(400, 390, 500, 500, false);
	if (selectedEquip != -1) {
		//name
		draw_set_color(c_black);
		draw_set_halign(fa_center);
		draw_text(450, 360, selectedEquip.name);
		//sprite
		draw_sprite_ext(selectedEquip.icon, 0, 450, 450, 2, 2, 0, c_white, 1);
		//stats
		draw_set_halign(fa_left);
		for(var i = 0; i < selectedEquip.statCount; i++) {
			var plus = "";
			if (selectedEquip.statValues[i] > 0)
				plus = "+";
			draw_text(340, 520 + i*25, plus + string(selectedEquip.statValues[i]) + statToString(selectedEquip.statNames[i]));
		}
		//special text
		draw_text_ext(330, 650, selectedEquip.specialText, -1, 280);
		//flavor text
		draw_text_ext(320, 750, selectedEquip.flavortext, -1, 300);
	}

}

draw_set_color(c_white);
