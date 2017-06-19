if (ySpeed > -maxJetSpeed && !place_meeting(x, y - 1, obj_BlockParent)) {
	ySpeed = ySpeed - (jetPower + weight + max(0, abs(ySpeed) / 20));
}

if (keyboard_check_released(jumpKey)) {
	vertState = verticalState.falling;
}