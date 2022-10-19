function initializeCombatStats() {
	
	//basic stats
	hp = 1;
	hp_max = 1;
	atk = 0;
	def = 0;
	hpregen = 0;
	
	//keyword stats
	shield = 0;
	thorns = 0;
	lifesteal = 0;
	bastion = 0;
	fury = 0;
	calm = 0;
	fortify = 0;
	vengeance = 0;
	penetration = 0;
	momentum = 0;
	momentum_current = 0;
	vitality = 0;
	ward = 0;
	tenacity = 0; //percent lower stun duration 
	potency = 0; //apply stronger status effects
	
	//de/buffs
	taunt = false;
	tauntTarget = -1;
	defendCounter = 0;
	weaken = 0;
	shred = 0;
	wither = 0;
	poison = 0;
	poisoned = 0;
	burn = 0;
	burned = 0;
	burnResist = 0;
	frost = 0;
	frostResist = 0;
	mending = 0;
	mendingStored = 0;
	
	frenzy = 0;
	frenzyStacks = 0;
	precision = 0;
	precisionStacks = 0;
	vanguard = 0;
	vanguardStacks = 0;
	
	
	//multiplier stats
	movespdMulti = 1;
	atkMulti = 100;
	defMulti = 100;
	dmgMulti = 100;
	hpMulti = 100;
	healMulti = 100;
	cooldownRate = 100;
	
	//misc stats
	source = id;
	if (object_get_parent(object_index) == CharacterParent)
		combatStart = false;
	else
		combatStart = true;
	
	hitsDealt = 0;
	damageDealt = 0;
	hitsTaken = 0;
	damageTaken = 0;
	healingReceived = 0;
	interruptTimer = 0;
	stunTimer = 0;
	dodgeTimer = 0;
	sidestepTimer = 0;
	sidestepDirection = 1;
	knockTimer = 0;
	knockTime = 0;
	knockVert = 0;
	knockHori = 0;
	pushForce = 0;
	pushDir = 0;
	pushTimer = 0;
	pushCD = 0;
	
	//character specific variables
	reanimated = false;
	doofusSquad = false;
	burnAsExtraDamage = 0;
	thorns_frost = 0;
	tpCounter = 0;
	shifting = false;
	
	imageBlend_base = c_white;
	//turn red when hit
	damagedCounter = 0;
	//turn green when healed
	healedCounter = 0;
	//turn light blue when frosted
	frostedCounter = 0;
	
	killcounter = 0;
}