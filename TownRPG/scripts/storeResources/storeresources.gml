
function storeResources(char) {
	for (var i = 0; i < array_length(char.resources); i++) {
		global.resources[i] += char.resources[i];
		char.resources[i] = 0;
	}
	
}