if upgraded = true
{
    draw_sprite(sUpgradeButton,2,x,y)
}
else if available = true
{
    draw_sprite(sUpgradeButton,1,x,y)
}
else 
{
	draw_sprite(sUpgradeButton,0,x,y)
}
