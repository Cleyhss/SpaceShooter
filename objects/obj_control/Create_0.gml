/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
alarm[0] = room_speed;

pontos = 0;
level = 1;
proximo_level = 100;

ganha_pontos = function(_pontos){
	pontos+=_pontos;
	if (pontos>=proximo_level){
		level++;
		proximo_level*= 2;
	}
}

cria_inimigo = function(){
	var xx = irandom_range(64, 1856);
	var yy = irandom_range(-64, -928);	
	var inimigo = obj_inimigo_1;

	var chance = random_range(0, level);

	if (chance > 2){
		var inimigo = obj_inimigo2;
	}
	instance_create_layer(xx, yy, "Inimigos", inimigo);
}