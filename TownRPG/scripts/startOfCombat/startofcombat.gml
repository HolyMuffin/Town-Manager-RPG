function startOfCombat() {
	
	calculatePartyBastion();
	
	//set start of combat flags for party
	for (var i = 0; i < ds_list_size(partyList_alive); i++) {
		ds_list_find_value(partyList_alive, i).combatStart = true;
	}
}