function dropXP(objID) {
	var xp = floor(objID.xpMultiplier*100*power(1.05, objID.level-1)); //set base xp and scaling per level here
	for (var i = 0; i < ds_list_size(dungeon.partyList); i++) {
		var char = ds_list_find_value(dungeon.partyList, i)
		var lvldiff = max(0, char.level - objID.level);
			gainXP(char, xp*power(0.9, lvldiff));
	}
}