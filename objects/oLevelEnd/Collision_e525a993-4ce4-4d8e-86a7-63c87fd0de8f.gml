/// @description Insert description here
// You can write your code in this editor
with (oPlayer) {
	if (hasControl) {
		hasControl = false;
		slideTransition(TRANS_MODE.GOTO, other.target);
	}
}