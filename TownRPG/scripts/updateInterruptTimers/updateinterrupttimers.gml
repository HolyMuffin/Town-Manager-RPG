// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function updateInterruptTimers() {
	interruptTimer = max(0, interruptTimer-1);
	stunTimer = max(0, stunTimer-1);
	knockTimer = max(0, knockTimer-1);
	dodgeTimer = max(0, dodgeTimer-1);
	sidestepTimer = max(0, sidestepTimer-1);
	pushTimer = max(0, pushTimer-1);
	pushCD = max(0, pushCD-1);
}