/// @description Insert description here
// You can write your code in this editor

enterLean = true;

if enterLean and keyboard_check(vk_enter)
{
	enteredLean = true;
	instance_change(oLeanMan, true);
	instance_destroy(other);
}