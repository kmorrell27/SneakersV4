/// @desc screenShake(mangnitude, frames)
/// @arg magnitude sets the strength in pixels
/// @arg frames Length in frames

with (oCamera) {
	if (argument0 > shakeRemain) {
		shakeMagnitude = argument0;
		shakeRemain = argument0;
		shakeLength = argument1;
	}
}