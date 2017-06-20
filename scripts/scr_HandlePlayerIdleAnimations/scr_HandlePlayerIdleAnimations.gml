if (!idleFlag) {
	sprite_index = spr_PlayerIdle;
	idleFlag = true;
	idleAnimationTimer = 60 + round(random(150));
}

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