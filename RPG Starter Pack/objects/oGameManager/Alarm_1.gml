alarm[1] = difficultyChangeTime * 60

var temp = layer_get_all_elements("Enemies")

if (array_length(temp) > 0)
{
    for (var i = 0; i < array_length(temp); i++)
    {
        var elementID = temp[i]
        var currentEnemy = layer_instance_get_instance(elementID)
        //var currentEnemy = layer_instance_get_instance(temp[i])
        currentEnemy.movementSpeed = currentEnemy.movementSpeed * 1.1
        currentEnemy.damage = currentEnemy.damage * 1.1
    }
}

global.enemySpeedModifier = global.enemySpeedModifier * 1.1
//
//oEnemyBase.movementSpeed = oEnemyBase.movementSpeed * 1.5
//oEnemyBase.damage = oEnemyBase.damage * 1.2