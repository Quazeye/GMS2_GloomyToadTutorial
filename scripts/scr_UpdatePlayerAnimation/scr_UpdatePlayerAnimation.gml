switch (vertState) {

	case verticalState.onGround: {
		if (xSpeed == 0) {
			// This is our idle state code.
			scr_HandlePlayerIdleAnimations();
		} else {
			sprite_index = spr_PlayerRun;
			image_speed = (xSpeed / maxRunSpeed);
			idleFlag = false;
		}
		break;
	}
	
	case verticalState.falling: {
		if (ySpeed > 1) {
			sprite_index = spr_PlayerInAir;
			image_index = 1;
		}
		image_speed = 0;
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