 function changeMenu() {
	with(menu) {
		destroyAllButtons();
		
		switch(currentMenu) {
			case "Main Menu":
				
				var button = instance_create_depth(935, 285, depth-1, MenuButton_StartDungeon);
				button.menu = id;
				ds_list_add(buttonList, button);
				
				var button = instance_create_depth(332, 285, depth-1, MenuButton_Return);
				button.menu = id;
				ds_list_add(buttonList, button);
				
				var button = instance_create_depth(605, 285, depth-1, MenuButton_SelectDungeon);
				button.menu = id;
				ds_list_add(buttonList, button);
				
				var button = instance_create_depth(607, 810, depth-1, MenuButton_DungeonDropList);
				button.menu = id;
				ds_list_add(buttonList, button);
				
				for(var i = 0; i < 4; i++) {
					var height = 436+i*115;
					var button = instance_create_depth(776, height, depth-1, MenuButton_SelectCharacter);
					button.menu = id;
					button.characterNumber = i;
					button.char = ds_list_find_value(slot.partyList, i);
					ds_list_add(buttonList, button);
						
					for(var j = 0; j < 3; j++) {
						button = instance_create_depth(934 + j*55, height, depth-1, MenuButton_SelectEquipment);
						button.menu = id;
						button.equipmentNumber = i*3+j;
						
						var pos = i*3+j;
						var equipment = ds_list_find_value(slot.equipmentList, pos);
						if (equipment != -1 && !menu.slot.running) {
							if (equipment.numAvailable == 0)
								ds_list_set(slot.equipmentList, pos, -1);
							else
								equipment.numAvailable--;
						}
						
						ds_list_add(buttonList, button);
					}
				}
				
				break;
			case "Dungeon Select":
				//format in notepad
				var button = instance_create_depth(332, 285, depth-1, MenuButton_Return);
				button.menu = id;
				ds_list_add(buttonList, button);
				
				break;
			case "Character Select":
				sortCharactersAvailable();
				//format in notepad
				var button = instance_create_depth(935, 285, depth-1, MenuButton_CharSelect_Confirm);
				button.menu = id;
				ds_list_add(buttonList, button);
				
				var button = instance_create_depth(332, 285, depth-1, MenuButton_Return);
				button.menu = id;
				ds_list_add(buttonList, button);
				
				for(var i = 0; i < 16; i++) {
					var height = 420+floor(i/4)*120;
					var button = instance_create_depth(750+(90*(i%4)), height, depth-1, MenuButton_CharSelect_Select);
					button.menu = id;
					button.buttonNumber = i;
					ds_list_add(buttonList, button);
				}
				
				for(var i = 0; i < 4; i++) {
					var button = instance_create_depth(340+i*75, 600, depth-1, MenuButton_CharSelect_InfoSkill);
					button.menu = id;
					button.buttonNumber = i;
					ds_list_add(buttonList, button);
				}
				break;
			case "Equipment Select":
				updateEquipmentAvailable();
			
				var button = instance_create_depth(935, 285, depth-1, MenuButton_EquipSelect_Confirm);
				button.menu = id;
				ds_list_add(buttonList, button);
			
				var button = instance_create_depth(332, 285, depth-1, MenuButton_Return);
				button.menu = id;
				ds_list_add(buttonList, button);
				
				
				for(var i = 0; i < 16; i++) {
					var height = 420+floor(i/4)*120;
					var button = instance_create_depth(750+(90*(i%4)), height, depth-1, MenuButton_EquipSelect_Select);
					button.menu = id;
					button.buttonNumber = i;
					ds_list_add(buttonList, button);
				}
				
				
				break;
		}
		
		
		
		
		
		
		
		
		
		
		
	}
}