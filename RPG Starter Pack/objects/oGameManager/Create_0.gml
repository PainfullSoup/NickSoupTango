global.playerMoveDirection = 0
global.playerLookDirection = 0

global.moveX = 0
global.moveY = 0

global.playerLevel = 1

global.enemyCount = 0
global.runTime = 0

global.enemySpeedModifier = 1

enemySpawnTime = 2
difficultyChangeTime = 3
xpOrbSpawnRate = 1

// Start spawning enemies after 2 seconds
alarm[0] = enemySpawnTime * 60

// Increase difficulty every 5 seconds
alarm[1] = difficultyChangeTime * 60 + enemySpawnTime * 60


alarm[2] = xpOrbSpawnRate * 60

global.unlockedWeapons = [oPistol, oSMG]

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

instance_create_layer(0, 0, "Instances", oPistol)
instance_create_layer(0, 0, "Instances", oSMG)

instance_create_layer(view_wport *.3, view_hport* 0.88, "Instances", oNextWeaponArrow)