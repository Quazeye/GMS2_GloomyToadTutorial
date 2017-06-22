/// @description Update Gun Position and Execute Gun Shooting

// Flip our image to face same direction as player.
image_xscale = obj_Player.image_xscale;

// Update x and y position to chase the players body.
x = lerp(x, obj_Player.x + obj_Player.xSpeed, 0.5); // Adding obj_Player.xSpeed makes it so that the gun doesn't move when walking and not firing.
y = lerp(y, obj_Player.y, 0.6);

// Execute shoot code
scr_PlayerGunShoot();