/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
event_inherited();

if ((y > room_height/3)&&(posso_mover==true)){
	if (x > room_width/2){
		hspeed = -4;
	}
	else{
		hspeed = 4;
	}
	posso_mover = false;
}

