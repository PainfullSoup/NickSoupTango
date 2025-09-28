
if ( oPlayer.isTryingToShoot )
{
    ShootWeapon()
}

if oPlayer.currentXP >= oPlayer.xpToLevel
{
    global.playerLevel += 1
    oPlayer.currentXP = 1
    oPlayer.xpToLevel = oPlayer.xpToLevel * 1.2
}