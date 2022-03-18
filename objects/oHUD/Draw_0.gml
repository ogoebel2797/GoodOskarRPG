//display current coin count
draw_text(camera_get_view_x(view_camera[0]) + 64 , camera_get_view_y(view_camera[0]) +64, "Coins: " +string(global.coins));
draw_text(camera_get_view_x(view_camera[0]) + 64 , camera_get_view_y(view_camera[0]) +96, "Points: " +string(global.points));
draw_text(camera_get_view_x(view_camera[0]) + 64 , camera_get_view_y(view_camera[0]) +128, "HP: " +string(oPlayer.hp));
draw_text(camera_get_view_x(view_camera[0]) + 64 , camera_get_view_y(view_camera[0]) +160, "Level Time Remaining: " +string(floor(levelTimer)));