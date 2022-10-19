firstCounter++;
if (firstCounter >= 200) {
	if (secondCounter == 0)
		menu.selectedChar = gacha();
	secondCounter++;
}

if (secondCounter == 300) {
	menu.canExit = true;
	menu.gachaAnimating = false;
	instance_destroy();
}
