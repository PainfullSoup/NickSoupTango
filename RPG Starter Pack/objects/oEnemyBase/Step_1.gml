
x = x + global.xSpeed
y = y + global.ySpeed

if (attackCD > 0) {attackCD += 1}
if (attackCD >= attackInterval) {attackCD = 0}