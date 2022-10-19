function moveToward(moveX, moveY) {
	
	if (location == 1 && dungeon == pointer_null) 
		var ratio = global.moveSpeed / (sqrt(sqr(moveX - x) + sqr(moveY - y)*2 )) / 3;
	if (location == 1 && dungeon != pointer_null)
		var ratio = global.moveSpeed / (sqrt(sqr(moveX - x) + sqr(moveY - y)*2 ));
	if (location == 2) {
		var ratio = global.combatSpeed * max(0, movespdMulti) / (sqrt(sqr(moveX - x) + sqr(moveY - y)*2 ));
		if (dungeon.dungeonState == 1)
		ratio /= 1.5;
	}
	
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