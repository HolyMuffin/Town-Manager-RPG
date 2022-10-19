function moveToward2(moveX, moveY, spd) {
	
	var ratio = spd / (sqrt(sqr(moveX - x) + sqr(moveY - y)*2 ));
	
	if (x < moveX)//flip image if moving left/right 
		image_xscale = 1;
	if (x > moveX)
		image_xscale = -1;
	
	if (ratio > 1) {//move
		x = moveX;
		y = moveY;
		return true;
	} else {
		x += (moveX - x) * ratio;
		y += (moveY - y) * ratio;
		return false;
	}
	
}