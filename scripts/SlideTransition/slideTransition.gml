/// @desc slideTransition(mode, targetRoom)
/// @arg Mode sets transition mode between next, restart, and goto
/// @arg TargetRoom sets target room when using goto mode (optional)

with (oTransition) {
	mode = argument[0];
	if (argument_count > 1) {
		target = argument[1];
	}
}
