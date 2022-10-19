function initializeEquipment() {
	global.uniqueEquipmentCount = 0;
	
	//object IDs of equipment --- fill this manually
	var EquipmentObjects = [equip_LeonsSaber, equip_AnimaStone, equip_MuggersMask, equip_PoisonTippedBolts, equip_RustySword, equip_RottingShield, equip_RottingStaff, equip_WitheredSkull];
	
	//how many you can have --- fill this manually
	global.EquipmentCountMax = [5, 5, 5, 5, 5, 5, 5, 5];
	
	//how many you currently have --- filled automatically
	global.EquipmentCount = []; 

	var itemCount = array_length(EquipmentObjects);
	
	//instance IDs of equipment --- filled automatically
	global.EquipmentArray = [];
	
	global.equipmentAvailable = ds_list_create();
	
	for (var i = 0; i < itemCount; i++) {
		//fill EquiipmentCount array
		global.EquipmentCount[i] = 0;
		
		//create item info objects
		var inst = instance_create_depth(0, 0, 0, EquipmentObjects[i]);
		inst.idNum = i;
		global.EquipmentArray[i] = inst;
	}
}