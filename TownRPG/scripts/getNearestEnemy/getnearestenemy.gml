function getNearestEnemy() {
	
	var list = otherTeamList();
	var nearest = ds_list_find_value(list, 0);
	var shortestDistance = distanceFrom(nearest);
	for (var i = 1; i < ds_list_size(list); i++) {
		var unit = ds_list_find_value(list, i);
		if (distanceFrom(unit) < shortestDistance) {
			shortestDistance = distanceFrom(unit);
			nearest = unit;
		}
	}
	return nearest;
}