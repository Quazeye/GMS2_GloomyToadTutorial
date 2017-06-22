
// Transition to onGround state if floor is directly under us.
if (place_meeting(x,y + 1, obj_BlockParent)) {
	vertState = verticalState.onGround;
}

// Transition to jetPacking state if up key is being held.
if (upKeyDown && currentFuel > 10) {
	vertState = verticalState.jetPacking;
}

