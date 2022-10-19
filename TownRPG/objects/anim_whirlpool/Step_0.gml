event_inherited();

if (!global.pause && !dungeonPauseCheck() && instance_exists(dungeon)) {
	depth = -room_height;
	var list = otherTeamList();
	for(var i = 0; i < ds_list_size(list); i++) {
		var hole = id;
		var enemy = ds_list_find_value(list, i);
		var dist = distanceFrom(enemy);
		var count = counter;
		with(enemy) {
			if (count%32 == 0)
				stun(id, 32);
			var force = max(1, 5-dist/100);
			moveToward2(hole.x, hole.y, force);
			image_xscale = 1;
		}
		if (dist < 60 && counter >= 150 && counter%10 == 0)
			damage(enemy, dmg/10, true);
	}
	counter++;
	if (counter >= duration)
		instance_destroy();
}