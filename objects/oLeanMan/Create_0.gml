/// @description Insert description here
// You can write your code in this editor

// how many pixels per frame you want our player to move
xSpeed = 5;
ySpeed = 5;

//what direction the player is moving. 1 = right, -1 = left, 0 = not moving at all {facing front???]
xDirection = 0;

yVector = 0;

//what direction the player is moving. 1 = up, -1 = down, 0 = not moving at all {facing front???]
yDirection = 0;

xVector = 0;

//health points
hp = 8

//invincibility
isInvincible = false;

//level timer
levelTimer = 100;

//invincibility timer
invTimer = 2;

omniDirection = 0;

mouseX = mouse_x;
mouseY = mouse_y;
hookActive = false;

haveHook = false;

enteredShip = false;
sliding = false;
slideTimer = 1;

enum lstates
{
	lwalking,
	lsliding,
	lidle
}

state = lstates.lwalking;

state_array[lstates.lwalking] = StateLeanWalking;
state_array[lstates.lsliding] = StateLeanSliding;
state_array[lstates.lidle] = StateLeanIdle;

sprite_array[lstates.lwalking] = sLeanManWalking;
sprite_array[lstates.lsliding] = sLeanManWalking;
sprite_array[lstates.lidle] = sLeanManIdle;