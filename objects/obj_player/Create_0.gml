/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

velocidade = 8;

atirar = function(){
	var fire = keyboard_check_pressed(vk_space);
	if (fire){
		instance_create_layer(x, y - sprite_height/3, "Tiros", obj_tiro_player);
	}
}