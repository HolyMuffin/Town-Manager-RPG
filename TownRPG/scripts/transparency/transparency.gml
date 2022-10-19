function transparency() {
	if (hp_max == 0) {
		image_alpha = 1;
	} else if (hp == 0) { //ghost while dead
		image_alpha = 0.4;
	} else if (tpCounter > 0) {
		image_alpha = 1-tpCounter/100;
	} else if (dodgeTimer > 0 || sidestepTimer > 0) {
		image_alpha = 0.3;
	} else {
		image_alpha = 1;
	}
}