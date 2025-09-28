function ShootWeapon(){

    var currentWeapon = oPlayer.currentWeapon
    
    if (currentWeapon.readyToFire) 
    {
        var currentBullet = instance_create_layer(oPlayer.x, oPlayer.y, "Bullets", currentWeapon.projectile)
       
        currentWeapon.readyToFire = false
    }
}