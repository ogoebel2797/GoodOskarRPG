/// @description creating variables
//code that runs one when oPlayer is created


// how many pixels per frame you want our player to move
xSpeed = 4;
ySpeed = 4;

//what direction the player is moving. 1 = right, -1 = left, 0 = not moving at all {facing front???]
xDirection = 0;

yVector = 0;

//what direction the player is moving. 1 = up, -1 = down, 0 = not moving at all {facing front???]
yDirection = 0;

xVector = 0;

//coins and points

//invincibility
isInvincible = false;

//health points
hp = 6

//level timer
levelTimer = 100;

//invincibility timer
invTimer = 2;

omniDirection = 0;
enterGobbler = false;

mouseX = mouse_x;
mouseY = mouse_y;
hookActive = false;


haveHook = false;

enteredShip = false;
enteredGobbler = false;
enteredLean = false;
dashing = false;
dashTimer = 0.3;

enum states
{
	walking,
	idle
}

state = states.idle;

state_array[states.walking] = StatePlayerWalking;
state_array[states.idle] = StatePlayerIdle;

sprite_array[states.walking] = sPlayerWalking;
sprite_array[states.idle] = sPlayerIdle;