surface_set_target(global.surface)

//draw_sprite(tFogOfWar,0,layer_get_x("Background"), layer_get_y("Background"))
draw_sprite(sFogOfWar,0,oPlayer.x,oPlayer.y)

gpu_set_blendmode(bm_subtract)

draw_circle(oPlayer.x, oPlayer.y, 120, false)

draw_triangle(originX, originY, x1, y1, x2, y2, false)

gpu_set_blendmode(bm_normal)

draw_self()

surface_reset_target()

draw_surface(global.surface,0,0)