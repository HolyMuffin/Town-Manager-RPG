function decrementCooldown() {
	for (var i = 0; i < skillCount; i++) {
		var cd = ds_list_find_value(skillCooldown, i);
		var frostCalc = frost*max(0, 1-frostResist/100);
		ds_list_set(skillCooldown, i, max(0, cd-(1*max(0, 1-0.005*frostCalc)*cooldownRate/100)));
	}
}