
event_inherited();
if (!global.pause && !dungeonPauseCheck()) {
	//skills
	if (interruptTimer == 0) {
		var dungeonX_mid =  global.dungeonWidth/3;
		var dungeonY_mid = dungeon.y+global.dungeonHeight_Sky+global.dungeonHeight_Ground/2;
		if (currentSkill == "Whirlpool") {
			if (skillTimer == 120) {
					var inst = createSubObject(dungeonX_mid, dungeonY_mid, -room_height, anim_whirlpool);
					inst.duration = skillTimer+150;
					inst.dmg = atk*20;
			}
			
			if (skillTimer == 1)
				changeSkill("Bubble Beam");
		}
		
		if (currentSkill == "Bubble Beam") {
			if (skillTimer > 30) {
					if (random(1) < 1.8) {
						var dir = point_direction(x+sprite_width/4, y-sprite_height*2/3, dungeonX_mid, dungeonY_mid-50);
						var rand = random(20);
						part_type_direction(particle, dir+1+random(rand-1), dir+1+random(rand-1), 0, 0.01);
						part_type_speed(particle, 5, 7, -(4.5+rand/20)/70, 0);
						part_type_life(particle, 50-rand, 65);
						part_particles_create(dungeon.particleSystem, x+sprite_width/4, y-sprite_height*2/3, particle, 1);
					}
				}
		}
		
		if (currentSkill == "Bubble Bomb") {
			if (skillTimer == 60) {
			}
		}
		
		if (currentSkill == "Auto: Bite") {
			if (!instance_exists(target) || !inRange(1)) {
				cancelSkill();
			} else {
				if (skillTimer == 40) {
					var inst = createSubObject(target.x,target.y-target.sprite_height/2, 0, anim_crunch);
					inst.target = target;
					inst.skill = currentSkill;
					inst.dmg = atk*1.5;
				}
			}
		}
	}
}