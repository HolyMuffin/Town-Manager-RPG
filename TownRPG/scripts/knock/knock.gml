function knock(target, knockHori, knockVert, knockTime) {
	if (target.tenacity < 1) {
		with (target)
			cancelSkill();
		target.interruptTimer = max(knockTime*(1-target.tenacity), target.interruptTimer);
		target.knockTimer = knockTime/4*(1-target.tenacity);
		target.knockHori = knockHori;
		target.knockVert = knockVert;
		target.knockTime = knockTime/4*(1-target.tenacity);
		if (target.x < x)
			target.image_xscale = 1;
		if (target.x > x)
			target.image_xscale = -1;	
	}
}