function sortCharactersAvailable() {
	var charList = global.charactersAvailable;
	for(var i = 0; i < ds_list_size(charList); i++) {
		for(var j = 0; j < i; j++) {
			var char1 = ds_list_find_value(charList, i);
			var char2 = ds_list_find_value(charList, j);
			//if char1 has more exp OR same exp and higher rarity
			if (char1.xp > char2.xp || (char1.xp == char2.xp && char1.rarity > char2.rarity)) {
				ds_list_insert(charList, j, char1);
				ds_list_delete(charList, i+1);
				break;
			}
		}
	}
	
}