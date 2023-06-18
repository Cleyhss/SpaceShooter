/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

velocidade = 10;
espera_tiro = room_speed / 4;
level_tiro = 1;

atirar = function(){
	var fire = keyboard_check(vk_space);
	if ((fire)&&(alarm[0] == -1)){
		alarm[0] = espera_tiro;
		
		if(level_tiro == 1){
			instance_create_layer(x, y - sprite_height/3, "Tiros", obj_tiro_player);
		}
		else if (level_tiro == 2){
			instance_create_layer(x - 45, y - sprite_height/3, "Tiros", obj_tiro_player);
			instance_create_layer(x + 45, y - sprite_height/3, "Tiros", obj_tiro_player);
		}
		else if (level_tiro == 3){
			instance_create_layer(x - 60, y - sprite_height/3, "Tiros", obj_tiro_player);
			instance_create_layer(x + 60, y - sprite_height/3, "Tiros", obj_tiro_player);
			instance_create_layer(x, (y-20)-sprite_height/3, "Tiros", obj_tiro2_player);
		}
	}
}