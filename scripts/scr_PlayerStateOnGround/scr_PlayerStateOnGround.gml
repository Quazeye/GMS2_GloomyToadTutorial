
// Move to falling state when there is no longer a floor under us.
if (!place_meeting(x,y + 1, obj_BlockParent)) {
	vertState = verticalState.falling;
}

// Move to jumping state if we press our up key.
if (upKeyPressed) {
	ySpeed = -jumpPower;
	vertState = verticalState.jumping;
}

