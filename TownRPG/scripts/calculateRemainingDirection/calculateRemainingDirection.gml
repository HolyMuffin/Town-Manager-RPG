// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function calculateRemainingDirection() {
	for (var i = 0; i < 4; i++){
		correctDirections[i] = currentRoadLink.directions[i];
	}
	correctDirectionCount = 1;	
	correctDirections[reverseDirection(currentDirection)] = false;
}