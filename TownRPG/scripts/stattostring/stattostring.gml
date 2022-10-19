function statToString(variableName) {
	switch(variableName) {
		case "hpMulti":
			return "% Health";
		case "atkMulti":
			return "% Attack";
		case "defMulti":
			return "% Defense"; 
		case "healMulti":
			return "% Heal Power"; 
		case "burnResist":
			return "% Burn Resistance"; 
		case "frostResist":
			return "% Frost Resistance"; 
		default:
			return "  " + string_upper(string_char_at(variableName, 1)) + string_delete(variableName, 1, 1);		
		}
}