ds_list_destroy(onrushList);
if (instance_exists(librarian)) {
	librarian.unitCounter--;
	librarian.waveDelay = 300;
}