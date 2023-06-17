/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

posso_mover = true;

 atirar = function(){
	if (y>=0){
		instance_create_layer(x - 4, y + sprite_height/3, "Tiros", obj_tiro_inimigo2);
	}
 }