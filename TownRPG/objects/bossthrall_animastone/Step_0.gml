if(!instance_exists(dungeon))
	instance_destroy();
	
if (!global.pause && irandom(floor(counter/100)) == 0) {
	var cultist = cultists[irandom(3)];
	var inst = instance_create_depth(cultist.xMod+random(20)-10, cultist.yMod+random(20)-10, depth-1000, BossThrall_AnimaParticle);
	inst.source = id;
}

if (!global.pause && !dungeonPauseCheck()) {
	if (dungeon.dungeonState == 1)
		x -= dungeon.dungeonSpeed;
//	if (counter == 360 && !instance_exists(boss)) //what does this do?
//		instance_destroy();
}

if (!global.pause && dungeonPauseCheck()) {
	counter++; 
	if (counter == 350) {
		instance_destroy();
	}
}