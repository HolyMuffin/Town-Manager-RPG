depth = -y;

if (!instance_exists(dungeon) || !instance_exists(source) || source.location == 1 || source.hp == 0)
	instance_destroy();
else if (!global.pause && !dungeonPauseCheck()) {
	var list;
	with(source)
		list = otherTeamList();
		
	if (dungeon.dungeonState == 2 && ds_list_size(list) > 0) {
		var target;
		with(source) {
			var highestHP = 1.01;
			for(var i = 0; i < ds_list_size(list); i++) {
				var inst = ds_list_find_value(list, i);
				if (inst.hp_max > highestHP) {
					target = inst;
					highestHP = inst.hp_max;
				}
			}
		}
	
		if (x-(target.x-target.image_xscale*30) == 0) {//when at attach spot
			image_xscale = target.image_xscale;
			if (!attached && currentBuff = -1) {
				currentBuff = applyBuff(target, buff_PurpleSpirit, 10);
				buffTarget = target;
				attached = true;
			}
		} else {//move to target
			if (target == buffTarget) //target moved, but still correct buff target
				moveToward2(target.x-target.image_xscale*30, target.y-1, global.combatSpeed*1.2);
			else { //target change OR no target yet
				attached = false;
				if (currentBuff != -1 && instance_exists(currentBuff)) { //target change = remove buff on previous target
					removeBuff(currentBuff);
					currentBuff = -1;
					buffTarget = -1;
				}
				moveToward2(target.x-target.image_xscale*30, target.y-1, global.combatSpeed*1.2);
			}
		}
	} else { //return to source
		if (abs(x-(source.x-source.image_xscale*num*15)) == 0) {
			image_xscale = source.image_xscale;
		} else {
			moveToward2(source.x-source.image_xscale*num*15, source.y-1, global.combatSpeed*source.movespdMulti+0.2);
		}
	}

}