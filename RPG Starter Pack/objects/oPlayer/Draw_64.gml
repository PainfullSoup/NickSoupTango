/// @desc Health Bar
//joyStickOriginY = view_yport + (view_hport * 0.75)




draw_sprite_stretched(sHealthBar, 0, view_wport*0.4, view_hport*0.81, (hp/hpMax)*view_wport*.2, view_hport*.04)
draw_sprite_stretched(sStaminaBar, 0, view_wport*0.4, view_hport*.88, (max(currentStamina,1)/maxStamina)*view_wport*.2, view_hport*0.035)
draw_sprite_stretched(HandSBar, 0, view_wport*0.36, view_hport*.75,view_wport*.27, view_hport*.23)

//Gun callout stuff
//draw_sprite_stretched(sHealthBar, 0, view_wport*0.33, view_hport*0.88, view_wport*0.33, view_hport*.04)
//draw_text(view_wport/2, view_hport*.9, oPlayer.currentWeapon.weaponName)
