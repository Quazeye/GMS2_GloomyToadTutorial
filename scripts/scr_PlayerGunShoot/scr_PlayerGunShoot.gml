if (--shotTimer <= 0) {
	if (keyboard_check(global.shootGunKey)) {
		shotTimer = fireRate;
		inst = instance_create_layer(x,y + 44, global.mainLayer, obj_PlayerGunBullet);
		
		 // This checks if image_xscale is equal to 1, the ? ends the check, 
		 // the 0 : 180 are the return values for if the check is true or false - true : false
		 // so it will return 0 if its true or 180 if its false.
		inst.direction = (obj_Player.image_xscale == 1) ? 0 : 180;
		
		inst.speed = 25;
		inst.image_xscale = obj_Player.image_xscale;
	}
}