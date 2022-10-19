function pullCharacter(rarityArray) {
	var num = irandom(array_length(rarityArray)-1);
	var char = rarityArray[num];
	
	var inst;
	//if character already exists, duplicate count +1, else create the character
	if(instance_exists(char)) {
		inst = instance_find(char, 0);
		if (inst.dupeCount < 20)
			inst.dupeCount += 1;
	} else {
		inst = createCharacter(char);
	}
	return inst; //returns instance, NOT object id
}