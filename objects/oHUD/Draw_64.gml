/// @description Insert description here
// You can write your code in this editor//display current coin count
draw_text(camera_get_view_x(view_camera[0]) + 64 , camera_get_view_y(view_camera[0]) +64, "Coins: " +string(global.coins));
draw_text(camera_get_view_x(view_camera[0]) + 64 , camera_get_view_y(view_camera[0]) +96, "Points: " +string(global.points));
draw_text(camera_get_view_x(view_camera[0]) + 64 , camera_get_view_y(view_camera[0]) +128, "HP: " +string(oPlayer.hp));
draw_text(camera_get_view_x(view_camera[0]) + 64 , camera_get_view_y(view_camera[0]) +160, "Level Time Remaining: " +string(floor(levelTimer)));
draw_text(camera_get_view_x(view_camera[0]) + 64 , camera_get_view_y(view_camera[0]) +192, "xPos: " + string(global.xPos));
draw_text(camera_get_view_x(view_camera[0]) + 64 , camera_get_view_y(view_camera[0]) +224, "yPos: " + string(global.yPos));
