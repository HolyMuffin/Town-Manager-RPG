if (!global.pause && !dungeonPauseCheck() && source.combatStart) {

	//summon skeleton mages
	var inst = spawnMinion(x+40*image_xscale, y-50, Minion_Skeleton_Mage);
	inst.atkMulti = 100 + (atkMulti-100)*skillScaling[0]/100;
	with (inst)
		updateBaseStats();
		
	var inst = spawnMinion(x+40*image_xscale, y+50, Minion_Skeleton_Mage);
	inst.atkMulti = 100 + (atkMulti-100)*skillScaling[0]/100;
	with (inst)
		updateBaseStats();
	//summon skeleton shielders
	var inst = spawnMinion(x+70*image_xscale, y-30, Minion_Skeleton_Shield);
	inst.defMulti = 100 + (defMulti-100)*skillScaling[1]/100;
	with (inst)
		updateBaseStats();
		
	var inst = spawnMinion(x+70*image_xscale, y+30, Minion_Skeleton_Shield);
	inst.defMulti = 100 + (defMulti-100)*skillScaling[1]/100;
	with (inst)
		updateBaseStats();
	
	//summon skeleton shielders
	var inst = spawnMinion(x+50*image_xscale, y, Minion_Revenant);
	inst.hpMulti = 100 + (hpMulti-100)*skillScaling[2]/100;
	with (inst)
		updateBaseStats();
}

event_inherited();
if (!global.pause && !dungeonPauseCheck()) {
	//skills
	if (interruptTimer == 0) {
		if (currentSkill == "Auto: Light Ball") {
			if (skillTimer == 1 && instance_exists(target)) {
				var inst = createSubObject(x,y-(sprite_height/2), -1, anim_lightball);
				inst.dmg = atk*1.2;
				inst.target = target;
			}
		}
	}
}
