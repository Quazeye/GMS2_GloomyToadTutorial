var upKeyDown = keyboard_check(jumpKey);
var rightKeyDown = keyboard_check(rightKey);
var leftKeyDown = keyboard_check(leftKey);
var shootKeyDown = keyboard_check(shootKey);

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
