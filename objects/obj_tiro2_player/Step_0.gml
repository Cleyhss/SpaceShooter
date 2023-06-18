/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

if (obj_player.level_tiro == 4){
	if (x > xstart + 50){
		hspeed *= -1;
	}
	if (x < xstart - 50){
		hspeed *= -1;
	}
}