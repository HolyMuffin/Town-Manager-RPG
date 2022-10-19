function findFirstRoadLink() {
	var inst = ds_list_find_value(todoList, 0)
	var inst2;
	var index = 0;
	var difference = 2000;
	if (currentDirection < 2) {//if on vertical road
		if (inst.gpsY > y) {//want to go downwards
			currentDirection = 1;//direction is downwards
			for (var i = 1; i < 19; i++) {//look through road links
				inst2 = instance_find(RoadLinks, i);
				if (inst2.x == x && inst2.y > y && inst2.y - y < difference) {//if road link is on the road, is downwards, and is closer than difference
					index = i;//set current best road link to i
					difference = inst2.y - y;
				}
			}
		}
		if (inst.gpsY <= y) {
			currentDirection = 0;
			for (var i = 1; i < 19; i++) {
				inst2 = instance_find(RoadLinks, i);
				if (inst2.x == x && inst2.y < y && y - inst2.y < difference) {
					index = i;
					difference = inst2.y - y;
				}
			}
		}
	}
	
	if (currentDirection > 1) {
		if (inst.gpsX > x) {
			currentDirection = 3;
			for (var i = 1; i < 19; i++) {
				inst2 = instance_find(RoadLinks, i);
				if (inst2.y == y && inst2.x > x && inst2.x - x < difference) {
					index = i;
					difference = inst2.x - x;
				}
			}
		}
		if (inst.gpsX <= x) {
			currentDirection = 2;
			for (var i = 1; i < 19; i++) {
				inst2 = instance_find(RoadLinks, i);
				if (inst2.y == y && inst2.x < x && x - inst2.x < difference) {
					index = i;
					difference = inst2.x - x;
				}
			}
		}
	}			
	currentRoadLink = instance_find(RoadLinks, index);
	destinationX = currentRoadLink.x;
	destinationY = currentRoadLink.y;
}