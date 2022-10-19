event_inherited();
if (!global.pause && !dungeonPauseCheck()) {


	//skills
	if (interruptTimer == 0) {
		if (currentSkill == "Eruption") {
			if (instance_exists(target)) {
				if (skillTimer == 14 && hp > 0.4*hp_max) {
					var minrange = global.dungeonWidth/2;
					if (x <= global.dungeonWidth/2)
						var randomX = minrange + random(global.dungeonWidth-minrange);
					else
						var randomX = random(global.dungeonWidth-minrange);
					inst = lob(anim_Eruption, x, y-sprite_height/2, randomX, dungeon.y+global.dungeonHeight_Sky+random(global.dungeonHeight_Ground), 1.5, 1, 0.1);
					inst.dmg = skillScaling[0]*atk/100;
					
					applyBurn(id, 0.5*burn);
					skillTimer = 20;
				}
			}
		}
		
		if (currentSkill == "Auto: Bolt") {
			if (skillTimer == 5 && instance_exists(target)) {
				var inst = createSubObject(x,y-sprite_height/2, -1, anim_bolt);
				inst.dmg = atk*0.8;
				inst.target = target;
				inst.image_blend = c_red;
			}
		}
	}
}