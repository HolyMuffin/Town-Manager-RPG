function calculatePartyBastion() {
	bastionAlly = 0;
	for(var i = 0; i < ds_list_size(partyList); i++) {
		var unit = ds_list_find_value(partyList, i);
		bastionAlly += unit.bastion;
	}
}