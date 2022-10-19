/// @description
/// @param x
/// @param y
function setPartyDestination(moveX, moveY) {
	for(var i = 0; i < ds_list_size(partyList); i++) {
		var inst = ds_list_find_value(partyList, i);
		inst.destinationX = moveX;
		inst.destinationY = moveY;
	}
}