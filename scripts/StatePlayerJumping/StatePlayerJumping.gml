// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StatePlayerJumping()
{
	CheckCollisionsX();
	
	//what does the state do?

	//animations for the state

	//conditions for leaving the state
	if(place_meeting(x, y + 1, oWall))
		{
			state = states.walking
			canJump = true;
		}
		
	if(place_meeting(x, y + 1, oTurret))
		{
			state = states.walking
			canJump = true;
		}
}