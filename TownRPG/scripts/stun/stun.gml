function stun(target, duration) {
	if (target.tenacity < 1) {
		with (target)
			cancelSkill();
		duration = floor(duration * (1 - target.tenacity));
		target.stunTimer = duration;
		if (duration > target.interruptTimer)
			target.interruptTimer = duration;
	}
}