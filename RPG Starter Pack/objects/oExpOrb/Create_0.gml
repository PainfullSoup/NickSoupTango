xpValue = 5
movementSpeed = 1

var tempDirection = (random_range(0,360))
var roomRadius = sqrt(sqr(view_get_wport(0)/2)+sqr(view_get_hport(0)/2))

var enemyX = oPlayer.x + lengthdir_x(random_range(roomRadius,roomRadius*1.1),tempDirection)
var enemyY = oPlayer.y + lengthdir_y(random_range(roomRadius,roomRadius*1.1),tempDirection)

x = enemyX
y = enemyY