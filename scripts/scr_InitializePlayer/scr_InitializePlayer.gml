// Global keys found in our scr_InitializeGameController.
// This script is run from our Players Create Event.
jumpKey = global.jumpKey;
rightKey = global.moveRightKey;
leftKey = global.moveLeftKey;
shootKey = global.shootGunKey;

maxRunSpeed = 4.8; // Cap the xSpeed of our player.
maxFallSpeed = 12; // Cap the positive (going down) ySpeed of our player.
maxJetSpeed = 4; // Cap the negative (going up) ySpeed of our player.

xSpeed = 0; // Current value to apply to x coordinate of player.
ySpeed = 0; // Current value to apply to y coordinate of player.

frict = 0.2; // Friction to apply against our player.
accel = 0.4; // Acceleration rate of player.

weight = 0.5; // Force applied by gravity downward.
jetPower = 0.12; // Force upward per step while using jetpack.
jumpPower = 10; // Jump height or force upward.

vertState = verticalState.falling;  // Set initial vertial state.

// Create our gun object and be sure it is on top of our player, not behind.
instance_create_depth(x,y, depth - 1, obj_PlayerGun);
// Create our jetpack object and be sure it is behind our player, not on top.
jetpack = instance_create_depth(x,y, depth + 1, obj_PlayerJetpack);

// Idle animation variables
idleFlag = false;  // This is set to true when vertState = onGround and xSpeed = 0.
idleAnimationTimer = 0; // This is the timer used to switch into a new idle animation sequence.

// Jetpack variables
currentFuel = obj_GameController.playerMaxFuel;
maxFuel = obj_GameController.playerMaxFuel;
fuelLossRate = obj_GameController.playerFuelLossRate;
fuelChargeRate = obj_GameController.playerFuelChargeRate;








