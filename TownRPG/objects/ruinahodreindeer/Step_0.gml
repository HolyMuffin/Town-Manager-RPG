event_inherited();
if (!global.pause && !dungeonPauseCheck()) {
	
	
	//skills
	if (interruptTimer == 0) {
		if (currentSkill == "Eruption") {
			if (instance_exists(target)) {
				if (skillTimer%5==0) {
					var halfDungeon = global.dungeonWidth/2;
					if (x <= halfDungeon)
						var randomX = global.dungeonWidth/3 + random(global.dungeonWidth*2/3);
					else
						var randomX =  random(global.dungeonWidth*2/3);
					inst = lob(anim_Eruption, x, y-sprite_height/3, randomX, dungeon.y+global.dungeonHeight_Sky+random(global.dungeonHeight_Ground), 1.5, 1, 0.1);
					inst.dmg = atk*3;
					inst.radius = 90; //edited bigger cuz he doesnt fire very many
				}
			}
		}
		
		if (currentSkill == "Auto: Bolt") {
			if (skillTimer == 1 && instance_exists(target)) {
				var inst = createSubObject(x,y-(sprite_height*3/4), 0, anim_bolt);
				inst.dmg = atk;
				inst.target = target;
				inst.image_blend = c_orange;
			}
		}
	}
}