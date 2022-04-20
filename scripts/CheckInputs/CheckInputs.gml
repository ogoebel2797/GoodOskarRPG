// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckInputs()
{
	//keyboard check and imputs
	right = keyboard_check(ord("D"));
	left = keyboard_check(ord("A"));
	up = keyboard_check(ord("W"));
	down = keyboard_check(ord("S"));
	dash = keyboard_check_pressed(vk_control);
	slide = keyboard_check_pressed(vk_shift);
	attack = keyboard_check_pressed(vk_alt);
	
	xDirection = right - left;

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