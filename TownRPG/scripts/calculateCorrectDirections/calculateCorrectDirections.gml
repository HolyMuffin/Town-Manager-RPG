function calculateCorrectDirections() {	for(var i = 0; i < 4; i++)
		correctDirections[i] = false;


	correctDirectionCount = 2;
	if (currentRoadLink.y > currentBuilding.gpsY)
		correctDirections[0] = true;
	else
		correctDirections[1] = true;
	
	if (currentRoadLink.x > currentBuilding.gpsX)
		correctDirections[2] = true;
	else
		correctDirections[3] = true;

	for (var i = 0; i < 4; i++) {
		if (correctDirections[i] && !currentRoadLink.directions[i]) {
			correctDirections[i] = false;
			correctDirectionCount--;
		}
	}
	if (correctDirections[reverseDirection(currentDirection)] && correctDirectionCount > 1) {
		correctDirectionCount = 1;
		correctDirections[reverseDirection(currentDirection)] = false;
	}
}