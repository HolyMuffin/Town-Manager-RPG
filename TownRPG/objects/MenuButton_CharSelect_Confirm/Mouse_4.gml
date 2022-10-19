var partylist = menu.slot.partyList;
var char = menu.selectedChar

//current index of the selected character if already in party, else -1
var currentlocation = ds_list_find_index(partylist, char)

//if already in party, clear out of party
if (currentlocation != -1)
	ds_list_set(partylist, currentlocation, -1);

//add to party
ds_list_set(partylist, menu.selectedButton, char);

menu.currentMenu = "Main Menu";
changeMenu();
