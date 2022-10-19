event_inherited();
var button = instance_create_depth(950, 800, depth-1, MenuButton_StartGacha); //change to pull gacha button
button.menu = id;
ds_list_add(buttonList, button);

var button = instance_create_depth(950, 500, depth-1, MenuButton_GachaPullList); //change to pull gacha button
button.menu = id;
ds_list_add(buttonList, button);

gachaAnimating = false;
selectedChar = -1;
selectedSkill = -1;



for(var i = 0; i < 4; i++) {
	var button = instance_create_depth(540+i*75, 600, depth-1, MenuButton_CharSelect_InfoSkill);
	button.menu = id;
	button.buttonNumber = i;
	ds_list_add(buttonList, button);
}