
var moveDirection = point_direction(xstart , ystart, oPlayer.x, oPlayer.y)

x = x + lengthdir_x(movementSpeed, moveDirection)
y = y + lengthdir_y(movementSpeed, moveDirection)

var distFromPlayer = point_distance(x , y, oPlayer.x, oPlayer.y)

if(distFromPlayer <= (sprite_width/2)+(oPlayer.sprite_width/2))
{
	oPlayer.hp = oPlayer.hp - damage
	instance_destroy()
	global.enemyCount = global.enemyCount - 1
}

if(distFromPlayer > view_get_wport(0)*2){
	instance_destroy()
	global.enemyCount = global.enemyCount - 1
}