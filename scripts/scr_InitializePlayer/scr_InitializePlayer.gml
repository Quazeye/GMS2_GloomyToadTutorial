// Global keys found in our scr_InitializeGameController.
jumpKey = global.jumpKey;
rightKey = global.moveRightKey;
leftKey = global.moveLeftKey;
shootKey = global.shootGunKey;

maxRunSpeed = 4.8;
maxFallSpeed = 12;
maxJetSpeed = 4;

xSpeed = 0; // Current value to apply to x coordinate of player.
ySpeed = 0; // Current value to apply to y coordinate of player.

frict = 0.2; // Friction to apply against our player.
accel = 0.4; // Acceleration rate of player.

weight = 0.5;
jetPower = 0.12;
jumpPower = 10;

vertState = verticalState.falling;  // Vertial state.

