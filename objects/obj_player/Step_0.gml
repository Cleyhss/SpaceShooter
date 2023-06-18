/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var up, down, left, right; 
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));

y += (down - up) * velocidade;
x += (right - left) * velocidade;

atirar();

if ((keyboard_check_pressed(vk_up))&&(level_tiro < 5)){
	level_tiro++;
}

if ((keyboard_check_pressed(vk_down))&&(level_tiro > 1)){
	level_tiro--;
}
