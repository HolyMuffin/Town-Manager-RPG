function knockAnimation() {

	if (knockTimer > 0) {
		x -= knockHori*image_xscale;
		x = max(30, min(global.dungeonWidth-30, x));
		y += knockVert*(knockTime/2-knockTimer)/(knockTime/2);
		image_angle = 90*image_xscale*(knockTime-knockTimer)/knockTime;
	}

}