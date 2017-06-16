var upKeyDown = keyboard_check(jumpKey);
var rightKeyDown = keyboard_check(rightKey);
var leftKeyDown = keyboard_check(leftKey);
var shootKeyDown = keyboard_check(shootKey);

if (rightKeyDown) {
	if (xSpeed < maxRunSpeed) {
		xSpeed = xSpeed + accel;
	}
}
if (leftKeyDown) {
	if (xSpeed > -maxRunSpeed) {
		xSpeed = xSpeed - accel;
	}
}

x = x + xSpeed;