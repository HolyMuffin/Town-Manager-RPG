event_inherited();

if (!global.pause && !pause) {
	if (currentRoom == roomCount && walkTimer == 200) {
		var coffinX = global.dungeonWidth+80;
		var coffinY = y+global.dungeonHeight_Sky+global.dungeonHeight_Ground/2;
		//coffin
		var inst = instance_create_depth(coffinX, coffinY, -coffinY, BossThrall_Coffin);
		inst.dungeon = id;
		//anima stone
		var animastone = instance_create_depth(coffinX, coffinY-35, -coffinY-1, BossThrall_AnimaStone);
		animastone.dungeon = id;
		animastone.cultists = [0,0,0,0];
		//cultists
		for (var i = 0; i < 4; i++) {
			var cultistX = coffinX + 80*power(-1, i);
			var cultistY = coffinY + 50*sign(i%4-1.5);
			var inst = instance_create_depth(cultistX, cultistY, -cultistY, BossThrall_Cultist);
			inst.xMod = cultistX-coffinX;
			inst.yMod = cultistY-coffinY;
			inst.image_xscale = -power(-1, i);
			inst.dungeon = id;
			animastone.cultists[i] = inst;
		}
	}
}