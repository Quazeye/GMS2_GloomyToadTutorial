// Global keys found in our scr_InitializeGameController.
// This script is run from our Players Create Event.
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

// Create our gun object and be sure it is on top of our player, not behind.
instance_create_depth(x,y, depth - 1, obj_PlayerGun);
// Create our jetpack object and be sure it is behind our player, not on top.
jetpack = instance_create_depth(x,y, depth + 1, obj_PlayerJetpack);

// Idle animation variables
idleFlag = false;
idleAnimationTimer = 0;









