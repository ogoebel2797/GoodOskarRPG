/// @description movement
//code that runs every frame

if haveHook
{
	if (mouse_check_button_pressed(mb_left))
	{
		mouseX = mouse_x;
		mouseY = mouse_y;
		if (place_meeting(mouseX, mouseY, oWall))
		{
			hookActive = true;
		}
	}

	if hookActive
	{
		x += (mouseX - x) * 0.1;
		y += (mouseY - y) * 0.1;
	}

	if (mouse_check_button_released(mb_left))
	{
		hookActive = false;
	}
}

//keyboard check and imputs
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
dash = keyboard_check_pressed(vk_control);

if left
{
	omniDirection = -1;
}

if right
{
	omniDirection = 1;
}

if up
{
	omniDirection = -2;
}

if down
{
	omniDirection = 2;
}

//Horizontal Movement
xDirection = right - left;
xVector = xSpeed * xDirection;

if dash
{
	dashing = true;
}

if dashing
{
	dashTimer -= 1/room_speed;
	if dashTimer <= 0
	{
		dashing = false;
		dashTimer = 0.3;
	}
	if (!place_empty(x + xVector, y))
	{
	xVector = 0;
	}
	//otherwise move fast
	if omniDirection = -1
	{
		x = x - 10;
	}
	if omniDirection = 1
	{
		x = x + 10;
	}
}
	
if (place_meeting(x + xVector, y, oWall))
	{
		//check if 1 pixel to the left or right of us until we collide with oWall
		// !  means "not"
		while(!place_meeting(x + xVector, y, oWall))
			{
			//only move 1 pixel at a time until you hit a wall
			x = x + xDirection;
			}
			xVector = 0;
	}
	if (place_meeting(x + xVector, y, oTurret))
	{
		//check if 1 pixel to the left or right of us until we collide with oWall
		// !  means "not"
		while(!place_meeting(x + xVector, y, oTurret))
			{
			//only move 1 pixel at a time until you hit a wall
			x = x + xDirection;
			}
			xVector = 0;
	}

else
{
	if (place_meeting(x + xVector, y, oWall))
	{
		//check if 1 pixel to the left or right of us until we collide with oWall
		// !  means "not"
		while(!place_meeting(x + xVector, y, oWall))
			{
			//only move 1 pixel at a time until you hit a wall
			x = x + xDirection;
			}
			xVector = 0;
	}
}
	if (place_meeting(x + xVector, y, oTurret))
	{
		//check if 1 pixel to the left or right of us until we collide with oWall
		// !  means "not"
		while(!place_meeting(x + xVector, y, oTurret))
			{
			//only move 1 pixel at a time until you hit a wall
			x = x + xDirection;
			}
			xVector = 0;
	}
	
//otherwise move normal
x = x + xVector;

//Vertical Movement
yDirection = down - up;
yVector = ySpeed * yDirection;

if dash
{
	dashing = true;
}

if dashing
{
	dashTimer -= 1/room_speed;
	if dashTimer <= 0
	{
		dashing = false;
		dashTimer = 0.3;
	}
	if (!place_empty(y + yVector, x))
	{
	yVector = 0;
	}
	//otherwise move fast
	if omniDirection = -2
	{
		y = y - 10;
	}
	if omniDirection = 2
	{
		y = y + 10;
	}
}

//check to see if there is a wall, and if there is, stop movement, if there isn't continue movement

if (place_meeting(y + yVector, x, oWall))
	{
		//check if 1 pixel to the left or right of us until we collide with oWall
		// !  means "not"
		while(!place_meeting(y + yVector, x, oWall))
			{
			//only move 1 pixel at a time until you hit a wall
			y = y + yDirection;
			}
			yVector = 0;
	}
	
	if (place_meeting(y + yVector, x, oTurret))
	{
		//check if 1 pixel to the left or right of us until we collide with oWall
		// !  means "not"
		while(!place_meeting(y + yVector, x, oTurret))
			{
			//only move 1 pixel at a time until you hit a wall
			y = y + yDirection;
			}
			yVector = 0;
	}

else
{
	if (place_meeting(y + yVector, x, oWall))
	{
		//check if 1 pixel to the left or right of us until we collide with oWall
		// !  means "not"
		while(!place_meeting(y + yVector, x, oWall))
			{
			//only move 1 pixel at a time until you hit a wall
			y = y + yDirection;
			}
			yVector = 0;
	}
}
	
	if (place_meeting(y + yVector, x, oTurret))
	{
		//check if 1 pixel to the left or right of us until we collide with oWall
		// !  means "not"
		while(!place_meeting(y + yVector, x, oTurret))
			{
			//only move 1 pixel at a time until you hit a wall
			y = y + yDirection;
			}
			yVector = 0;
	}
//otherwise move normal
y = y + yVector;