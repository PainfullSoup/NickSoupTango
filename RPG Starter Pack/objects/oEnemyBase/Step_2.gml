if (currentHealth <= 0)
{
    instance_destroy(self)
    oPlayer.currentXP += xpValue
}