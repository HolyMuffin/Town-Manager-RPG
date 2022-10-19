function gacha() {
	var max5pity = 30; //5* hard pity
	var max4pity = 10; //4* hard pity
	var rate5star = 5; //5* % chance
	var rate4star = 20; //4* % chance
	var rng = irandom(99)+1; //1-100
	var char;
	
	if (global.pityCount5star == max5pity || rng <= rate5star + floor(global.pityCount5star/10)) {
		char = pullCharacter(global.gacha5stars);
		global.pityCount5star = 1;
		global.pityCount4star++;
	} else if (global.pityCount4star >= max4pity || rng <= rate5star+rate4star) {
		char = pullCharacter(global.gacha4stars);
		global.pityCount5star++;
		global.pityCount4star = 1;
	} else {
		char = pullCharacter(global.gacha3stars);
		global.pityCount5star++;
		global.pityCount4star++;
	}
	return char;
}