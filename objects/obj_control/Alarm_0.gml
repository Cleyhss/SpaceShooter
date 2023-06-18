/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (!instance_exists(obj_inimigo_1)){
	var repetir = 10 * level;
	repeat(repetir){
		cria_inimigo();
	}
}

alarm[0] = room_speed * 3;