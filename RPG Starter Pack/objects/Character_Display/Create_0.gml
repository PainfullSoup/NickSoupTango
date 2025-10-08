if (global.Picked == 0) {
    instance_create_layer(3200, 1800, "Instances", oAracherDisplay);
} else if (global.Picked == 1) {
    instance_create_layer(3200, 1800, "Instances", oGunmanDisplay);
} else if (global.Picked == 2) {
    instance_create_layer(3200, 1800, "Instances", oMageDisplay);
}