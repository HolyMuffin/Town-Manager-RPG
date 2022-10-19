if (!global.pause && counter < 150) {
	image_alpha = min(1,counter/100);
	var num = 30 + round(counter/150*225);
	image_blend = make_color_rgb(num, num, num);
	counter++;
}

event_inherited();
if (!global.pause && !dungeonPauseCheck()) {

	image_index = 0;
	//skills
	if (interruptTimer == 0) {
		if (currentSkill == "Auto: AOE Smash") {
			if (skillTimer <= 120)
			image_index = 1; 
			if (skillTimer <= 70)
				image_index = 2;
			if (skillTimer == 70) {
				for(var i = 0; i < ds_list_size(dungeon.partyList_alive); i++) {
					var inst = ds_list_find_value(dungeon.partyList_alive, i);
					if (collision_rectangle(x, y-45, x+100*image_xscale, y+30, inst, false, false)) {
						if (!dodgeCheck(inst, 0.3)) {
							damage(inst, atk*5, true);
							if (inst.hp > 0)
								knock(inst, 2.8, 4.5, 90);
						}
					}
				}	
			}
		}
	}
}