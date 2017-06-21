/// @description Update Guns Position

x = lerp(x, obj_Player.x + obj_Player.xSpeed, 0.5); // Adding obj_Player.xSpeed makes it so that the gun doesn't move when walking and not firing.
y = lerp(y, obj_Player.y, 0.6);

image_xscale = obj_Player.image_xscale;

scr_PlayerGunShoot();
