//display current coin count
draw_text(camera_get_view_x(view_camera[0]) + 64 , camera_get_view_y(view_camera[0]) +32, "Coins: " +string(global.coins));
draw_text(camera_get_view_x(view_camera[0]) + 64 , camera_get_view_y(view_camera[0]) +64, "Points: " +string(global.points));
draw_text(camera_get_view_x(view_camera[0]) + 64 , camera_get_view_y(view_camera[0]) +96, "HP: " +string(oPlayer.hp));

draw_text(camera_get_view_x(view_camera[0]) + 64 , camera_get_view_y(view_camera[0]) +128, "Level Time Remaining: " +string(floor(levelTimer)));