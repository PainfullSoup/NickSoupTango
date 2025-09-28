/// @desc Health Bar
//joyStickOriginY = view_yport + (view_hport * 0.75)



draw_sprite_stretched(sXPBar, 0, 0, 0, (currentXP/xpToLevel)*view_wport, view_hport*.02)
draw_sprite_stretched(sHealthBar, 0, view_wport*0.25, view_hport*0.03, (hp/hpMax)*view_wport*.5, view_hport*.04)
draw_sprite_stretched(sStaminaBar, 0, view_wport*0.45, view_hport*.80, (max(currentStamina,1)/maxStamina)*view_wport*.1, view_hport*0.035)


draw_sprite_stretched(sHealthBar, 0, view_wport*0.33, view_hport*0.88, view_wport*0.33, view_hport*.04)
draw_text(view_wport/2, view_hport*.9, oPlayer.currentWeapon.weaponName)
