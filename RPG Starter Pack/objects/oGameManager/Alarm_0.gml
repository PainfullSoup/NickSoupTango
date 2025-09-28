alarm[0] = 30

// Spawns enemies 
if (global.enemyCount <= 100)
{
	var tempDirection = (random_range(0,360))
	var roomRadius = sqrt(sqr(view_get_wport(0)/2)+sqr(view_get_hport(0)/2))
	
	var enemyX = oPlayer.x + lengthdir_x(random_range(roomRadius,roomRadius*1.1),tempDirection)
	var enemyY = oPlayer.y + lengthdir_y(random_range(roomRadius,roomRadius*1.1),tempDirection)
	
	var tempRandom = irandom(20)
	
	var spawnType = oEnemy1
	if (tempRandom >= 15) {spawnType = oRunnerStandard}
	if (tempRandom = 1) {spawnType = oEliteEnemy1}
	
	instance_create_layer(enemyX, enemyY, "Enemies", spawnType)
	global.enemyCount = global.enemyCount + 1
}