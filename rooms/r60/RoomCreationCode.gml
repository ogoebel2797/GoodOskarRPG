if global.enterLeft
{
	oPlayer.x = global.xPos + ((room_width - 64) - sprite_width);
	oPlayer.y = global.yPos;
}

else if global.enterRight
{
	oPlayer.x = global.xPos - ((room_width - 64) - sprite_width);
	oPlayer.y = global.yPos;
}

else
{
	oPlayer.x = 63;
	oPlayer.y = 863;
}
