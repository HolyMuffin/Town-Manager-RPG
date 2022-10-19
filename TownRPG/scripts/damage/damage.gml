function damage(target, dmg, isDirectDamage) {
	if (instance_exists(target)) {
		if (isDirectDamage) {			
			var defCalc = target.def*(1-0.01*source.penetration)*max(0.3, 1-0.01*target.shred);//defence formula
			var dmgCalc = max(dmg*0.2, dmg - defCalc); //damage formula -def cannot drop damage below 20%
			dmgCalc *= source.dmgMulti/100; //damage multiplier
			dmgCalc *= max(0.5, 1-0.01*source.calm)*max(0.5,1-0.01*target.calm); //calm
			dmgCalc *= (1+0.02*source.fury)*(1+0.01*target.fury); //fury
			dmgCalc *= power(0.99, target.fortify); //fortify
			dmgCalc *= 1 + 0.02*(1-source.hp/source.hp_max)*source.vengeance; //vengeance
			dmgCalc *= 1 + 0.03*(source.momentum_current); //momentum
		
			dmgCalc *= 1 + 0.005*ceil(source.frenzyStacks)*source.frenzy; //frenzy
			source.frenzyStacks = min(8, source.frenzyStacks+1);		
			dmgCalc *= 1 + 0.02*floor(source.precisionStacks)*source.precision;//precision
			source.precisionStacks = max(0, source.precisionStacks-1);
		
			dmgCalc *= 1+0.005*ceil(source.vanguardStacks)*source.vanguard; //vanguard
			if (target.vanguard > 0) {
				dmgCalc *= 1-0.001*ceil(target.vanguardStacks)*target.vanguard; //vanguard
				target.vanguardStacks = min(5, target.vanguardStacks+1);
			}
			dmgCalc *= max(0, 1 - 0.005*source.frost);//frost
			dmgCalc *= max(0, 1 - 0.01*source.weaken);//weaken
			
		
			if(source.tauntTarget != -1) { //taunt
				if (source.tauntTarget == target)
					dmgCalc *= 1.2;
				else
					dmgCalc *= 0.9;
			}
		
			if (object_get_parent(target.object_index) == EnemyParent) {//bastion
				dmgCalc *= max(0.5, (1-dungeon.bastionEnemy/100));
			} else {
				dmgCalc *= max(0.5, (1-dungeon.bastionAlly/100));
			}
		
		
		
			applyBurn(target, source.burn); //apply burn
			applyPoison(target, source.poison); //apply poison
		
			var attacker = source; //thorns effects
			with(target) {
				if (thorns_frost > 0 && instance_exists(attacker)) {
						applyBuff(attacker, debuff_Frost, thorns_frost);
						attacker.frostedCounter = 12;
					}/**/
				if (thorns > 0 && instance_exists(attacker)) {
						damage(attacker, thorns*0.8*scaling, false);
						attacker.damagedCounter = 12;
					}
			}
			if (dmgCalc > 0)		
				target.damagedCounter = 15; //turn red briefly when hit

		} else {
			var dmgCalc = dmg; //indirect damage formula
		}
	
		dmgCalc = max(0, dmgCalc); //final damage
		var dmgCalc_ = dmgCalc; //copied for return purposes
	
		if (isDirectDamage) {
			source.hitsDealt++;
			source.damageDealt += dmgCalc;
			target.hitsTaken++;
			target.damageTaken += dmgCalc;
			if (source.lifesteal > 0)
				healing(source, dmgCalc*source.lifesteal/100, false);//apply lifesteal
			if (target.mending > 0)
				target.mendingStored += dmgCalc*target.mending/1000; //apply mending
		}
	
		if (target.shield > 0) {
			var shield_ = target.shield;
			target.shield = max(0, target.shield - dmgCalc);
			dmgCalc = max(0, dmgCalc - shield_);
		}
	
		target.hp = max(0, target.hp-dmgCalc);
	
		if (target.hp <= 0) { //if target runs out of health
		
			with(target)
				cancelSkill();
			//remove bastion
			if (object_get_parent(target.object_index) == EnemyParent)
				dungeon.bastionEnemy -= target.bastion;
			else
				dungeon.bastionAlly -= target.bastion;
		
			if (object_get_parent(target.object_index) == CharacterParent) { //if party member runs out of health
				ds_list_delete(dungeon.partyList_alive, ds_list_find_index(dungeon.partyList_alive, target));//delete from list of alive allies
			}
	
			if (target.diesOnDeath) { //if target is destroyed when it dies
		
				if (object_get_parent(target.object_index) == EnemyParent) //if enemy
					ds_list_delete(dungeon.enemyList, ds_list_find_index(dungeon.enemyList, target));//delete from list of enemies
				else
					ds_list_delete(dungeon.partyList_alive, ds_list_find_index(dungeon.partyList_alive, target));//(for minions) delete from list of alive allies
		
				if (instance_exists(source))
					source.killcounter++;//stored for on kill effects		
		
				if (object_get_parent(target.object_index) == EnemyParent) {//loot code	---------------------
			
					if (object_get_parent(source.object_index) == CharacterParent) {
					
						source.resources[0] += 0.01*dungeon.goldBonus*target.resourceDrops[0]; //increased gold drops 
						for (var i = 0; i < 3; i++) { //killer gains loot
							source.resources[i] += target.resourceDrops[i];
						}
			
					} else if (target == id) { //if enemy died of self damage 
						var partysize = ds_list_size(dungeon.partyList);
						for (var i = 0; i < 3; i++) { //split loot among party
							for (var j = 0; j < partysize; j++) {
								if (i == 0)
									ds_list_find_value(dungeon.partyList, j).resources[0] += 0.01*dungeon.goldBonus*resourceDrops[0]/partysize;
								ds_list_find_value(dungeon.partyList, j).resources[i] += resourceDrops[i]/partysize;
							}
						}
					} 
					dropXP(target);
				} //end of loot code ------------------------------------------------------------------------
		
				instance_destroy(target);//delete target
			}
		}
		return dmgCalc_;
	} else
		return 0;
}

