
// Input controls - Easily change controls here when needed.
global.jumpKey = vk_up;
global.moveRightKey = vk_right;
global.moveLeftKey = vk_left;
global.shootGunKey = vk_space;
global.menuKey = ord("M");

global.mainLayer = "Instances";

enum verticalState {
	onGround,
	jumping,
	jetPacking,
	falling
}