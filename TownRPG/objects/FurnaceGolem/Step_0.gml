event_inherited();
if (!global.pause && !dungeonPauseCheck()) {


	//skills
	if (interruptTimer == 0) {
		
		if (currentSkill == "Flamethrower") {
			if (!instance_exists(target) || !inRange(0) )
				cancelSkill();
			else {
				if (skillTimer > 20 && instance_exists(target)) {
					for (var i = 0; i < 4; i++) {
						var dir = point_direction(x,y-sprite_height/2,target.x,target.y-target.sprite_height/2);
						part_type_direction(particle, dir-6-i*3, dir+6+i*3, 0, 0);
						part_type_speed(particle, 6-i, 7-i, 0, 0);
						part_type_color1(particle, choose(make_color_rgb(255, 255, 150), make_color_rgb(255, 180, 30), make_color_rgb(255, 60, 00)));
						part_particles_create(dungeon.particleSystem, x, y-sprite_height/2, particle, 1);
					}
				}
				if (skillTimer > 15 && skillTimer < 85) {
					var dir = point_direction(x,y-sprite_height/2,target.x,target.y-target.sprite_height/2);
					var list = otherTeamList();
					for (var i = 0; i < ds_list_size(list); i++) {
						var enemy = ds_list_find_value(list, i);
						if (abs(point_direction(x,y-sprite_height/2,enemy.x,enemy.y-enemy.sprite_height/2)-dir) < 30 && distanceFrom(enemy) < 180)
							applyBurn(enemy, skillScaling[1]*atk/100/70);
					}
				}
			}
			
					
		}
		
		if (currentSkill == "Shield") {
			if (skillTimer == 5)
				shield += hp_max/4;
		}

		
		if (currentSkill == "Auto: Hammer") {
			if (!instance_exists(target) || !inRange(2)) {
				cancelSkill();
			} else {
				if (skillTimer == 45) {
					var inst = createSubObject(target.x,target.y-target.sprite_height/2, 0, anim_hammer);
					inst.target = target;
					inst.skill = currentSkill;
					inst.dmg = atk*2;
				}
			}
		}
	}
}
