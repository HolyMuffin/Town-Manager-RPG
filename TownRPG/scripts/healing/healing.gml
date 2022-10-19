function healing(target, heal, isDirectHealing) {
	heal = heal*max(0, 0.01*source.healMulti)*max(0, 1-0.01*target.wither);
	
	if (heal > 0 && target.hp > 0) {
		target.hp = min(target.hp+heal, target.hp_max);
		target.healingReceived += heal;
		if (isDirectHealing)
			target.healedCounter = 15; //turn green briefly when healed	
	}
	return heal;
}