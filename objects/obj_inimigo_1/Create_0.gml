/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
 vspeed = 4;
 pontos = 10;
 alarm[0] = room_speed * random_range(1,3) ;
 chance = 10;
 
 if (place_meeting(x, y, obj_inimigo_1)){
	instance_destroy(id, false);	 
 }
 
 atirar = function(){
	if (y>=0){
		instance_create_layer(x - 4, y + sprite_height/3, "Tiros", obj_tiro_inimigo1);
	}
 }
 
 dropa_item = function(_drop){
	 var valor = irandom(100);
	 if (valor <= _drop){
		instance_create_layer(x, y, "Tiros", obj_power_up);
	 }
 }