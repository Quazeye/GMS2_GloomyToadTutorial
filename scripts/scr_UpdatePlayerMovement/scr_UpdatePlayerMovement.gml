// Saving the state of keyboard checks for easier changing of actions later
// and easier readability.  These are booleans returning true or false.
upKeyDown = keyboard_check(jumpKey);
upKeyPressed = keyboard_check_pressed(jumpKey)
rightKeyDown = keyboard_check(rightKey);
leftKeyDown = keyboard_check(leftKey);
shootKeyDown = keyboard_check(shootKey);

// Make player sprite face the direction of movement
//if (xSpeed > 0) {
//	image_xscale = 1;
//} else if (xSpeed < 0) {
//	image_xscale = -1;
//}
// This replaces the above if statement and does the same thing.
if (xSpeed != 0) {
	image_xscale = sign(xSpeed);
}

// Handle increasing jet fuel when not jetpacking.

if (currentFuel <= maxFuel && vertState != verticalState.jetPacking) {
	currentFuel += fuelChargeRate;
}

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

// If neither right key or left key are pressed or they are both pressed we want to slow down with friction.
if (!rightKeyDown && !leftKeyDown || rightKeyDown && leftKeyDown) {
	if (xSpeed != 0) {
		xSpeed = xSpeed - sign(xSpeed) * frict;
	}
}

// Apply our xSpeed to our players x-coordinate in game.
if (!place_meeting(x + xSpeed, y, obj_BlockParent)) {
	x = x + xSpeed;
} else {
	// Move to be flush against the wall by moving 1 pixel at a time in the case our xSpeed was greater than 1 previously.
	while (!place_meeting(x + sign(xSpeed), y, obj_BlockParent)) {
		x = x + sign(xSpeed);
	}  // The while loop will finish before the draw event is called as it is a while loop.
	xSpeed = 0;
}

// State machine for players vertical movement
switch (vertState) {
	case verticalState.onGround:
		scr_PlayerStateOnGround();
		break;
	
	case verticalState.jumping:
		scr_PlayerStateJumping();
		break;
		
	case verticalState.jetPacking:
		scr_PlayerStateJetpacking();
		break;
		
	case verticalState.falling:
		scr_PlayerStateFalling();
		break;
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
	// Become flush with the floor (Similar to the x-application above
	move_contact_solid(point_direction(x,y, x,y + ySpeed), maxFallSpeed);
	ySpeed = 0;
}