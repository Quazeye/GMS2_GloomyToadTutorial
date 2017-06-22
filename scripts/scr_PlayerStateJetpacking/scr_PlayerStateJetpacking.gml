// Apply our jetpack force when our ySpeed is not maxxed out and there is no wall above us.
if (ySpeed > -maxJetSpeed && !place_meeting(x, y - 1, obj_BlockParent)) {
	ySpeed = ySpeed - (jetPower + weight + max(0, abs(ySpeed) / 20));
}

// Transition to falling state when jump key is released.
if (keyboard_check_released(jumpKey)) {
	vertState = verticalState.falling;
}