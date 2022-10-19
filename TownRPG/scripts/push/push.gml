function push(target, force, direction_,  duration) {
	if (target.tenacity < 1 && target.pushCD == 0) {
		with (target)
			cancelSkill();
		duration = floor(duration * (1 - target.tenacity));
		target.pushForce = force;
		target.pushDir = direction_;
		target.pushTimer = duration;
		target.pushCD = 100;
		if (duration > target.interruptTimer)
			target.interruptTimer = duration;
	}
}
