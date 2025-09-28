
var moveDirection = point_direction(x , y, oPlayer.x, oPlayer.y)

x = x + lengthdir_x(movementSpeed, moveDirection)
y = y + lengthdir_y(movementSpeed, moveDirection)

var distFromPlayer = point_distance(x , y, oPlayer.x, oPlayer.y)

if(distFromPlayer <= (sprite_width/2)+(oPlayer.sprite_width/2))
{
	if (attackCD = 0) {
		oPlayer.hp = oPlayer.hp - damage
		attackCD = 1
	}
}

