/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var up, down, left, right, shield; 
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
shield = keyboard_check(ord("E"));

if (shield){
	var escudo = instance_create_layer(x, y, "Escudo", obj_shield)
	escudo.alvo = id;
}

y += (down - up) * velocidade;
x += (right - left) * velocidade;

atirar();



/*
if ((keyboard_check_pressed(vk_up))&&(level_tiro < 6)){
	level_tiro++;
}

if ((keyboard_check_pressed(vk_down))&&(level_tiro > 1)){
	level_tiro--;
}

if (keyboard_check_pressed(vk_left)){
	espera_tiro*= .9;
}

if (keyboard_check_pressed(vk_right)){
	espera_tiro*= 1.2 ;
}*/

