function combatEffects() {
	
	//push
	if (pushTimer > 0) {
		x += dcos(pushDir)*pushForce;
		y -= dsin(pushDir)*pushForce;
		
		x = (max(0, min(global.dungeonWidth, x)));
		y = (max(dungeon.y+global.dungeonHeight_Sky, min(dungeon.y+global.dungeonHeight, y)));
	}
	
	healing(id, hpregen*(1+0.1*vitality), false); //tick health regeneration
	
	//clear damage/hits dealt/taken
	hitsDealt = 0;
	damageDealt = 0;
	hitsTaken = 0;
	damageTaken = 0;
	healingReceived = 0;
	
	if (poisoned >= hp_max/500) { //tick poison: 1 poison maths out to ~1 damage eventually
		damage(id, poisoned/80, false);
		poisoned *= 0.9975;
	}
	
	if (burned >= hp_max/500) { //tick burn: 1 burn maths out to ~1 damage eventually
		var burnCalc = burned*max(0, 1-burnResist/100);
		damage(id, burnCalc/80, false);
		burned *= 0.9975;
	}
	
	if (mendingStored >= hp_max/500) { //tick mending: 1 mending maths out to ~1 healing eventually
		healing(id, mendingStored/200, false);
		mendingStored *= 0.999;
	}
	
	momentum_current = max(0, momentum_current-momentum/(20*room_speed)); //decays linearly over 20 seconds
	
	frenzyStacks = max(0, frenzyStacks-2/room_speed); //lose 2 stacks per second
	vanguardStacks = max(0, vanguardStacks-2/room_speed); //lose 2 stacks per second
	precisionStacks = min(3, precisionStacks+2/room_speed); //gain 2 stacks per second, up to 3
	
	if (shield >= 1) { //decay shield
		shield *= 0.9995;
		shield = max(0, shield - 0.5*scaling/room_speed);
	}
	
	if (ward > 0) {
		shield += ward*(hp_max/1000)/room_speed; //gain shield per second equal to 0.1% health per ward
	}
}