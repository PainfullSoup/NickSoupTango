global.xSpeed = 0
global.ySpeed = 0

moveStick.innerX = 0
moveStick.innerY = 0 
lookStick.innerX = 0
lookStick.innerY = 0 
oPlayer.isShooting = false

for (var i = 0; i < 2; i++)
{
    if (device_mouse_check_button(i, mb_left))
    {
        var mouseX = device_mouse_x_to_gui(i)
        var mouseY = device_mouse_y_to_gui(i)
    
        var editStick = moveStick
        var tempOrigin = moveStickOriginX
        if (mouseX > view_wport / 2) 
        {
            editStick = lookStick
            tempOrigin = lookStickOriginX 
        }
        
        editStick.stickDirection = point_direction(editStick.x, editStick.y, mouseX, mouseY)
        editStick.innerX = mouseX - tempOrigin
        editStick.innerY = mouseY - joyStickOriginY
        
        
        if (point_distance(mouseX, mouseY, editStick.x, editStick.y) > editStick.sprite_width/2)
        { 
            editStick.innerX = lengthdir_x(editStick.sprite_width/2, editStick.stickDirection)
            editStick.innerY = lengthdir_y(editStick.sprite_width/2, editStick.stickDirection)
        }
        
    } 
}

if keyboard_check(ord("W")) {global.ySpeed = oPlayer.movementSpeed}
if keyboard_check(ord("A")) {global.xSpeed = oPlayer.movementSpeed}
if keyboard_check(ord("S")) {global.ySpeed = -oPlayer.movementSpeed}
if keyboard_check(ord("D")) {global.xSpeed = -oPlayer.movementSpeed}
    

// If we are moving, change xSpeed and ySpeed
if (moveStick.innerX != 0 || moveStick.innerY != 0)
{
    global.xSpeed = lengthdir_x(oPlayer.movementSpeed, moveStick.stickDirection + 180)
    global.ySpeed = lengthdir_y(oPlayer.movementSpeed, moveStick.stickDirection + 180)
    oPlayer.moveDirection = moveStick.stickDirection
}

// Moves background instead of us
layer_hspeed("Background", global.xSpeed)
layer_vspeed("Background", global.ySpeed)
layer_hspeed("Bullets", -global.xSpeed)
layer_vspeed("Bullets", -global.ySpeed)
layer_hspeed("Bush", global.xSpeed)
layer_vspeed("Bush", global.ySpeed)

// Change player stats of looking + shooting
if (lookStick.innerX != 0 || lookStick.innerY != 0)
{
    oPlayer.isTryingToShoot = true
    oPlayer.lookDirection = lookStick.stickDirection 
}
else 
{
    oPlayer.isTryingToShoot = false
	oPlayer.lookDirection = oPlayer.moveDirection
}