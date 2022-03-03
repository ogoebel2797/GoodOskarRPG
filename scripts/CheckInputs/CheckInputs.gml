// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckInputs()

{
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
}