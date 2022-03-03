// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckCollisionsX()

{
	CheckInputs();
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

}

function CheckCollisionsY()
{
	CheckInputs();
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

	else
	{
	
		//Vertical Movement
		yDirection = down - up;
		yVector = ySpeed * yDirection;
	
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
		//otherwise move normal
		y = y + yVector;
	}
}