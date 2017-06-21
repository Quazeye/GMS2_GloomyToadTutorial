/// @description Update Guns Position

x = lerp(x, obj_Player.x, max(min(abs(obj_Player.xSpeed), 1), 0.5));
y = lerp(y, obj_Player.y, 0.6);

image_xscale = obj_Player.image_xscale;