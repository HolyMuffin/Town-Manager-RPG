if (object_get_parent(object_index) == CharacterParent) {
	if (!global.pause && !dungeonPauseCheck()) {
		persistentEffects();
		characterAI();
	}
} else {
	event_perform_object(EnemyParent,  ev_step, 0);
}