/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
 vspeed = 3;
 
 alarm[0] = room_speed * random_range(1,3) ;
 
 atirar = function(){
	if (y>=0){
		instance_create_layer(x - 4, y + sprite_height/3, "Tiros", obj_tiro_inimigo1);
	}
 }