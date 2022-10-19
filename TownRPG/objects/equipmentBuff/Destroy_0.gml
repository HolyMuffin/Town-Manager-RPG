//remove from equipment object list
if (equipmentObject.complex) {
	var index = ds_list_find_index(equipmentObject.buffObjList, id);
	ds_list_delete(equipmentObject.buffObjList, index);
}