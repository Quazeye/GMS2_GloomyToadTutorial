
// Input controls - Easily change controls here when needed.
global.jumpKey = vk_up;
global.moveRightKey = vk_right;
global.moveLeftKey = vk_left;
global.shootGunKey = vk_space;
global.menuKey = ord("M");

global.mainLayer = "Instances";

// Vertical state used by obj_Player for checking vertical actions
enum verticalState {
	onGround,
	jumping,
	jetPacking,
	falling
}

// Needs to be called so that random functions can create different results.
randomize();

// Create main camera that follows player.
instance_create_layer(0,0, global.mainLayer, obj_Camera);

// Player Stats
playerGunFireRate = 20;
playerMaxFuel = 50;
playerFuelLossRate = 0.5;
playerFuelChargeRate = 1;

