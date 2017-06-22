/// @description Draw GUI

if (instance_exists(obj_Player)) {
	draw_healthbar(20,20, 20 + fuelBarWidth,20 + fuelBarHeight,
				  (obj_Player.currentFuel / obj_Player.maxFuel) * 100,
				   c_black, c_yellow, c_red, 0, true, true);				   
}
