event_inherited();
if (!global.pause && !dungeonPauseCheck()) {
	
	part_particles_create(dungeon.particleSystem, x+(random(50)-30)*image_xscale, y-sprite_height-10+random(sprite_height/2)+random(sprite_height/2), particle, 1);
	cogAngle = (cogAngle+1)%360;
	//skills
	if (interruptTimer == 0) {

		if (currentSkill == "Auto: Bash") {
			if (!instance_exists(target) || !inRange(0)) {
				cancelSkill();
			} else {
				if (skillTimer == 40) {
					var inst = createSubObject(target.x,target.y-target.sprite_height/2, 0, anim_bash);
					inst.target = target;
					inst.skill = currentSkill;
					inst.dmg = atk*1.4;
				}
			}
		}
	}
}