event_inherited();
if (!global.pause && !dungeonPauseCheck()) {

	if (dungeon.dungeonState != 2) {
		instance_destroy();
		exit;
	}
	
	chickenCounter++;
	
	//if (!instance_exists(dungeon))
	//	exit;
	
	spawndelay = max(50, 55 - floor(chickenCounter/300));
	
	if (chickenCounter > 300 && chickenCounter % spawndelay == 0) {
		with (dungeon) {
			inst = spawnEnemy(global.dungeonWidth/2 + random(global.dungeonWidth/2), y+global.dungeonHeight_Sky+random(global.dungeonHeight_Ground), MinionChicken);
		}
	}
		
		
	if (chickenCounter == 1500) {
		image_alpha = 1;
		ds_list_add(dungeon.enemyList, id);
		dungeon.wait = false;
		dungeon.boss = id;
	}
	
	if (chickenCounter >= 1500) {
		event_inherited();
	
	
		//skills
		if (interruptTimer == 0) {
			if (currentSkill == "Auto: Peck") {
				if (!instance_exists(target) || !inRange(0)) {
					cancelSkill();
				} else {
					if (skillTimer == 20) {
						var inst = createSubObject(target.x,target.y-target.sprite_height/2, 0, anim_peck);
						inst.target = target;
					}
					if (skillTimer == 5) {
						damage(target, atk, true);
					}
				}
			}
		}
	}
}