/// @description Handle Idle Animations for the Player

// This first if statement code we only want to execute the first step after the player has
// entered the idle state, or else our sprite index will constantly be change to spr_PlayerIdle.
if (!idleFlag) {
	sprite_index = spr_PlayerIdle;
	idleFlag = true;
	idleAnimationTimer = 60 + round(random(150));
}

// If timer runs out we want to reset the timer, choose a random animation, and
// if the random animation is not the blinking animation we choose a random idle sprite.
// Else if the idleAnimationTimer is greater than 0 we want to check if we are on our
// blinking sprite, and if so we need to check to see if the animation has completed.
if (--idleAnimationTimer <= 0) {
	idleAnimationTimer = 50 + round(random(150));
	if choose (true, false, false, false) {
		sprite_index = spr_PlayerIdleBlink;
		image_speed = 1;
	} else {
		sprite_index = choose (spr_PlayerIdleEyeMove1, spr_PlayerIdleEyeMove2, spr_PlayerIdleEyeMove3, 
							   spr_PlayerIdleEyeMove4, spr_PlayerIdleEyeMove5, spr_PlayerIdleEyeMove6, 
							   spr_PlayerIdleEyeMove7,)
	}
} else {
	if (sprite_index == spr_PlayerIdleBlink) {
		if (image_index > image_number - 1) {
			image_index = spr_PlayerIdle;
		}
	}
}