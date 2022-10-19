event_inherited();
if (!global.pause && !dungeonPauseCheck()) {

//skills
	if (interruptTimer == 0) {

		if (currentSkill == "Suspicious Brew") {
			if (skillTimer == 15) {
				var list = ownTeamList();
				for(var i = 0; i < ds_list_size(list); i++) {
					var unit = ds_list_find_value(list, i);
					applyBuff(unit, buff_SuspiciousBrew, skillScaling[1]);
				}
			}
		}
		
		if (currentSkill == "Auto: Potion Lob") {
				if (skillTimer == 10) {
					potionCounter++;
					if (potionCounter == 3) { //poison potion
						var inst = lob(lobPoisonPotion, x,y-(sprite_height/2), target.x, target.y, 0.85, 0.85, 1);
						inst.poison = 0.01*poison;
						inst.burn = 0.01*burn; 
						inst.tickCount = skillScaling[0]*room_speed; //seconds * ticks/second = ticks
						inst.target = target;
						potionCounter = 0;
					} else { //normal potion
						var inst = lob(lobPotion, x,y-(sprite_height/2), target.x, target.y, 0.85, 0.85, 1);
						inst.dmg = atk*1.5;
						inst.poison = poison*0.5;
						inst.target = target;
					}
				}
		}
	}
}
