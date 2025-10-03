
// Current States
isTryingToShoot = false
canShoot = true
lookDirection = 270
moveDirection = 270
currentWeapon = oPistol
isSprinting = false
catchBreath = false


// Movement Info
baseMovementSpeed = 2 * global.playerMovementSpeedModifier
movementSpeed = 2
sprintSpeed = 1.5 + global.playerSprintSpeedModifier

// Health Info
hpMax = 100 * global.playerMaxHealthModifier
hp = hpMax

// Stamina Info
maxStamina = 100 * global.playerMaxStaminaModifier
currentStamina = maxStamina
stamindaDrain = 25
stamTimerStarted = false
maxStamRegen = 4 * global.playerStaminaRechargeModifier
stamRegen = 0


// Vision Info
lookDistance = 10
lookAngle = 45