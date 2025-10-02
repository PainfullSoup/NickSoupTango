if (currentHealth <= 0)
{
    instance_destroy(self)
    global.enemyCount = global.enemyCount - 1
    global.earnedXP += xpValue
}