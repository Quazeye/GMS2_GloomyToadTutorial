

if (!place_meeting(x,y + 1, obj_BlockParent)) {
	vertState = verticalState.falling;
}

if (upKeyPressed) {
	ySpeed = -jumpPower;
	vertState = verticalState.jumping;
}

