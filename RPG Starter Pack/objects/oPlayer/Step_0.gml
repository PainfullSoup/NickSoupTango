movementSpeed = baseSpeed

var shiftHeld = keyboard_check(vk_shift)

// if we are holding shift and can sprint
if (shiftHeld and currentStamina > 0)
{
    movementSpeed = baseSpeed * sprintSpeed
    currentStamina = currentStamina - stamindaDrain/60
    stamRegen = 0
}
else
{
    if (stamRegen = 0 and stamTimerStarted = false)
    {
        if (currentStamina <= 0 and stamTimerStarted = false)
        {
            alarm[0] = 120
            stamTimerStarted = true
        }
        else 
        {
            stamRegen = 4
        } 
    } 
}

if (currentStamina >= maxStamina) 
{
	currentStamina = maxStamina
}
else
{
    currentStamina = currentStamina + stamRegen/60
}