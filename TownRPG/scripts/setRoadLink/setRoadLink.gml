function setRoadLink() {
	for (var i = 0; i < 4; i++) {
		if (correctDirections[i]) {
			currentDirection = i;
			currentRoadLink = currentRoadLink.neighbors[i];
		}
	}
	if (currentDirection <= 1) { //up down
		//destinationX = x;
		destinationY = currentRoadLink.y + irandom(30)-15;
	}
	if (currentDirection >= 2) { // left right
		destinationX = currentRoadLink.x + irandom(30)-15;	
		//destinationY = y;
	}
}