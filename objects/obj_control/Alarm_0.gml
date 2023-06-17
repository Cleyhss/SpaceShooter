/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var xx = irandom_range(64, 1856);
var yy = irandom_range(-64, -928);

instance_create_layer(xx, yy, "Inimigos", obj_inimigo_1);

alarm[0] = room_speed;