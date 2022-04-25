/// @description movement code

//code that runs every frame

script_execute(state_array[state]);
sprite_index = sprite_array[state];

if haveHook
{
	if (mouse_check_button_pressed(mb_right))
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

	if (mouse_check_button_released(mb_right))
	{
		hookActive = false;
	}
}

if (mouse_check_button_pressed(mb_left))
	{
		mouseX = mouse_x;
		mouseY = mouse_y;
		var bullet = instance_create_layer(x, y, "Instances", oPlayerProjectile)
		with (bullet)
	{
		speed = 6;
		direction = point_direction(x, y, oPlayer.mouseX, oPlayer.mouseY)
		// move_towards_point(oPlayer.mouseX,oPlayer.mouseY, speed);
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