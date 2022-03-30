/// @description Insert description here
// You can write your code in this editor

/// @description movement code

//code that runs every frame

script_execute(state_array[state]);
sprite_index = sprite_array[state];

if slide
	{
		sliding = true;
	}

	if sliding
	{
		slideTimer -= 1/room_speed;
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