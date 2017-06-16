// Ssving the state of keyboard checks for easier changing of actions later
// and easier readability.
upKeyDown = keyboard_check(jumpKey);
upKeyPressed = keyboard_check_pressed(jumpKey)
rightKeyDown = keyboard_check(rightKey);
leftKeyDown = keyboard_check(leftKey);
shootKeyDown = keyboard_check(shootKey);

// ---------------------------------------------------------------
// Horizontal input and motion handling with collision checks.
if (rightKeyDown && !place_meeting(x + 1, y, obj_BlockParent)) {
	if (xSpeed < maxRunSpeed) {
		xSpeed = xSpeed + accel;
	}
}
if (leftKeyDown && !place_meeting(x - 1, y, obj_BlockParent)) {
	if (xSpeed > -maxRunSpeed) {
		xSpeed = xSpeed - accel;
	}
}
if (!rightKeyDown && !leftKeyDown || rightKeyDown && leftKeyDown) {
	if (xSpeed != 0) {
		xSpeed = xSpeed - sign(xSpeed) * frict;
	}
}
if (!place_meeting(x + xSpeed, y, obj_BlockParent)) {
	x = x + xSpeed;
} else {
	while (!place_meeting(x + sign(xSpeed), y, obj_BlockParent)) {
		x = x + sign(xSpeed);
	}
	xSpeed = 0;
}

// ---------------------------------------------------------------
// Vertical application and collision checks.
if (vertState != verticalState.onGround) {
	if (ySpeed < maxFallSpeed) {
		ySpeed = ySpeed + weight;
	}
}
if (!place_meeting(x, y + ySpeed, obj_BlockParent)) {
	y = y + ySpeed;
} else {
	move_contact_solid(point_direction(x,y, x,y + ySpeed), maxFallSpeed);
	ySpeed = 0;
}