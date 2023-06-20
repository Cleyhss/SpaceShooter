/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

image_alpha -= .05;

if (image_alpha < .2){
	instance_destroy(id, false);
}

alarm[0] = room_speed;