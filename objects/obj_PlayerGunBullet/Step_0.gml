/// @description Check for Collision

if (collision_line(x,y, x + lengthdir_x(speed, direction),
						y + lengthdir_y(speed, direction),
						obj_BlockParent, false, true)) {
	instance_destroy();
}
