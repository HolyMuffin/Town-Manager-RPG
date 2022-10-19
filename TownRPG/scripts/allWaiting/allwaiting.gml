function allWaiting() {
	if (ds_list_size(partyList) == 0) {
		return false;
	}
	for(var i = 0; i < ds_list_size(partyList); i++) {
		if (ds_list_find_value(partyList, i).waiting == false)
			return false; 
	}
	return true;
}