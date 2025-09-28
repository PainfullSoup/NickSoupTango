global.xSpeed = 0
global.ySpeed = 0

moveStickOriginX = view_xport + (view_hport / 4)
lookStickOriginX = view_xport + view_wport - (view_hport /4)
joyStickOriginY = view_yport + (view_hport * 0.75)

moveStick = instance_create_layer(moveStickOriginX, joyStickOriginY, "layerUI", oMoveStick)
lookStick = instance_create_layer(lookStickOriginX, joyStickOriginY, "layerUI", oLookStick)

moveStick.image_alpha = 0.3
lookStick.image_alpha = 0.3