event_inherited();

if (!global.pause && !dungeonPauseCheck() && instance_exists(dungeon)) {
	var list = otherTeamList();
	for(var i = 0; i < ds_list_size(list); i++) {
		var hole = id;
		var enemy = ds_list_find_value(list, i);
		var dist = distanceFrom(enemy);
		if (dist < 250)
			stun(enemy, 2);
		if (dist < 60)
			damage(enemy, dmg-(enemy.def/30), false);
		if (dist > 20)
			with(enemy) {
				var force = max(0.5*(1-tenacity), 3-(dist/120))*(1-tenacity);
				moveToward2(hole.x, hole.y, force);
			}
	}
	counter++;
	if (counter >= 200)
		instance_destroy();
}