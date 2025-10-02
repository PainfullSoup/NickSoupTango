// General Globals
global.enemyCount = 0
global.moveX = 0
global.moveY = 0

// Enemy Modifiers
global.enemySpeedModifier = 1
global.enemyHealthModifier = 1
global.enemyXPValueModifier = 1
global.enemyDamageModifier = 1

// Player Unlocks
global.playerLevel = 1
global.unlockedWeapons = [oPistol, oSMG]
global.earnedXP = 0
global.earnedCash = 0


// Player Modifiers
    //Survival
global.playerMaxHealthModifier = 1
global.playerMaxStaminaModifier = 1
global.playerStaminaRechargeModifier = 1
global.playerMovementSpeedModifier = 1
global.playerSprintSpeedModifier = 0.0 //Additive

    //Primary
global.playerFireRateModifier = 1
global.playerReloadSpeedModifier = 1
global.playerMaxAmmoModifier = 1
global.playerDamageModifier = 1

    //Equipment


enemySpawnTime = 2
difficultyChangeTime = 5
xpOrbSpawnRate = 0


// Start spawning enemies after 2 seconds
alarm[0] = enemySpawnTime * 60

// Increase difficulty every 5 seconds
alarm[1] = difficultyChangeTime * 60 + enemySpawnTime * 60


alarm[2] = xpOrbSpawnRate * 60



draw_set_halign(fa_center);
draw_set_valign(fa_middle);

instance_create_layer(0, 0, "Instances", oPistol)
instance_create_layer(0, 0, "Instances", oSMG)
