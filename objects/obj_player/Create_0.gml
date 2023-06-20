/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

velocidade = 6;
espera_tiro = room_speed / 2;
level_tiro = 1;

tiro1 = function(){
	instance_create_layer(x, y - sprite_height/3, "Tiros", obj_tiro_player);
}
tiro2 = function(){
	instance_create_layer(x - 45, y - sprite_height/3, "Tiros", obj_tiro_player);
	instance_create_layer(x + 45, y - sprite_height/3, "Tiros", obj_tiro_player);
}
tiro3 = function(){
	instance_create_layer(x - 60, y - sprite_height/3, "Tiros", obj_tiro_player);
	instance_create_layer(x + 60, y - sprite_height/3, "Tiros", obj_tiro_player);
	instance_create_layer(x, (y-20)-sprite_height/3, "Tiros", obj_tiro2_player);
}
tiro4 = function(){
	var tiro_1 = instance_create_layer(x - 60, y - sprite_height/3, "Tiros", obj_tiro2_player);
	tiro_1.hspeed = -5;
	var tiro_2 = instance_create_layer(x + 60, y - sprite_height/3, "Tiros", obj_tiro2_player);
	tiro_2.hspeed = 5;
	instance_create_layer(x, (y-20)-sprite_height/3, "Tiros", obj_tiro_player);
}
tiro5 = function(){
	var tiro_1 = instance_create_layer(x - 60, y - sprite_height/3, "Tiros", obj_tiro_player);
	tiro_1.hspeed = -2;
	tiro_1.image_angle = tiro_1.direction - 90;
	var tiro_2 = instance_create_layer(x + 60, y - sprite_height/3, "Tiros", obj_tiro_player);
	tiro_2.hspeed = 2;
	tiro_2.image_angle = tiro_2.direction - 90;
	instance_create_layer(x, (y-20)-sprite_height/3, "Tiros", obj_tiro_player);
}
tiro6 = function(){
	var tiro_1 = instance_create_layer(x - 60, y - sprite_height/3, "Tiros", obj_tiro2_player);
	tiro_1.hspeed = -2;
	tiro_1.image_angle = tiro_1.direction - 90;
	var tiro_2 = instance_create_layer(x + 60, y - sprite_height/3, "Tiros", obj_tiro2_player);
	tiro_2.hspeed = 2;
	tiro_2.image_angle = tiro_2.direction - 90;
	instance_create_layer(x, (y-20)-sprite_height/3, "Tiros", obj_tiro2_player);
}


atirar = function(){
	var fire = keyboard_check(vk_space);
	if ((fire)&&(alarm[0] == -1)){
		alarm[0] = espera_tiro;
		
		if(level_tiro == 1){
			tiro1();
		}
		else if (level_tiro == 2){
			tiro2();
		}
		else if (level_tiro == 3){
			tiro3();
		}
		else if (level_tiro == 4){
			tiro4();
		}
		else if (level_tiro == 5){
			tiro5();
		}
		else if (level_tiro == 6){
			tiro6();
		}
	}
}

level_up = function(_chance){
	if (_chance >= 90){
		if (level_tiro < 6){
			level_tiro++;
		}
	}
	else if ((_chance >= 45)&&(_chance < 90)){
		if (espera_tiro > 16){
			espera_tiro *= 0.9;
		}
	}
	else{
		if (velocidade < 10){
			velocidade += 0.5;
		}
	}
}