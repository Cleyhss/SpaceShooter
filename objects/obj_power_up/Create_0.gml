/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

chance = random(100); 

speed = 2;
direction = irandom(359);

alarm[0] = room_speed;

if (chance >= 90){
	cor = c_red;
}
else if ((chance >= 45)&&(chance < 90)){
	cor = c_yellow;
}
else{
	cor = c_aqua;
}