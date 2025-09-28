
originX = oPlayer.x
originY = oPlayer.y

x1 = oPlayer.x + lengthdir_x(lookDistance, lookDirection + (oPlayer.lookAngle / 2))
y1 = oPlayer.y + lengthdir_y(lookDistance, lookDirection + (oPlayer.lookAngle / 2))

x2 = oPlayer.x + lengthdir_x(lookDistance, lookDirection - (oPlayer.lookAngle / 2))
y2 = oPlayer.y + lengthdir_y(lookDistance, lookDirection - (oPlayer.lookAngle / 2))