function getFurthestEnemy() {
	
	var list = otherTeamList();
	var furthest = ds_list_find_value(list, 0);
	var furthestDistance = distanceFrom(furthest);
	for (var i = 1; i < ds_list_size(list); i++) {
		var unit = ds_list_find_value(list, i);
		if (distanceFrom(unit) > furthestDistance) {
			furthestDistance = distanceFrom(unit);
			furthest = unit;
		}
	}
	return furthest;
}