//display current coin count
draw_text(80,64, "Coins: " +string(global.coins));
draw_text(80,96, "Points: " +string(global.points));
draw_text(80,128, "HP: " +string(oPlayer.hp));
draw_text(80,160, "Level Time Remaining: " +string(floor(levelTimer)));