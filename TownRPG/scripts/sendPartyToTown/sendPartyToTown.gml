function sendPartyToTown() {
	for(var i = 0; i < ds_list_size(partyList); i++) {
		var inst = ds_list_find_value(partyList, i);
		//commenting in case this mattered for some reason
		//inst.x = global.townX;
		//inst.y = global.townY;
		inst.x = 174;
		inst.y = 183;
		inst.destinationX = 174;
		inst.destinationY = 183;
		inst.location = 1;
		
		
		inst.waiting = false; // clean this up later, not all these needed. i just couldnt find which was cuasing bug by not being here
		inst.waitonportal = 50;
		inst.buildingTimer = 0;
		//inst.hp = inst.hp_max;
		ds_list_add(inst.todoList, instBuilding);
		ds_list_add(inst.todoList, instBuilding2);
		if (inst.dungeon != pointer_null)
			ds_list_add(inst.todoList, instBuilding3);
		//instdriver = instance_find(Driver, 0);
		inst.currentRoadLink = pointer_null;
		inst.reachedBuilding = false;
		inst.currentBuilding = ds_list_find_value(inst.todoList, 0);
	}
}
