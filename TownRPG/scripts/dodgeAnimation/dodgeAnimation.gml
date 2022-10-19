function dodgeAnimation() {
	if (dodgeTimer > 0) {
		x -= dodgeTimer/3*image_xscale;
	}
	if (sidestepTimer > 0) {
		y += (2+sidestepTimer/4)*sidestepDirection;
	}
}