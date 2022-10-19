var equiplist = menu.slot.equipmentList;

//add to equipment
ds_list_set(equiplist, menu.selectedButton, menu.selectedEquip);

menu.currentMenu = "Main Menu";
changeMenu();
