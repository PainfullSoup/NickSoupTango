if (instance_exists(self))
{
    currentHealth = currentHealth - oBullet.damage
    instance_destroy(oBullet)
}