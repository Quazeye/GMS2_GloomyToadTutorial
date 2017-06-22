switch (vertState) {

	case verticalState.onGround: {
		if (xSpeed == 0) {
			// This is our idle state code.
			scr_HandlePlayerIdleAnimations();
		} else {
			// This is our horizontal state while moving on ground.
			sprite_index = spr_PlayerRun;
			image_speed = (xSpeed / maxRunSpeed);
			idleFlag = false;
		}
		break;
	}
	
	case verticalState.falling: {
		// Make player look like he is falling.
		if (ySpeed > 1) {
			sprite_index = spr_PlayerInAir;
			image_index = 1;
		}
		image_speed = 0; // Don't want this to animate as there are 2 images.
		jetpack.sprite_index = spr_PlayerJetpackOff;
		idleFlag = false;
		break;
	}
	
	case verticalState.jumping: {
		sprite_index = spr_PlayerInAir;
		image_index = 0;
		image_speed = 0;
		break;
	}
	
	case verticalState.jetPacking: {
		sprite_index = spr_PlayerInAir;
		image_index = 0;
		image_speed = 0;
		jetpack.sprite_index = spr_PlayerJetpackOn;
		break;
	}

}