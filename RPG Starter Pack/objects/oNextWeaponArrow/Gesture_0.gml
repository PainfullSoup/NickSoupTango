if currentWeapons[array_length(currentWeapons)-1] = oPlayer.currentWeapon
{
    oPlayer.currentWeapon = currentWeapons[0]
}
else
{
	oPlayer.currentWeapon = currentWeapons[array_get_index(currentWeapons,oPlayer.currentWeapon,0,0)+1]
}