/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_self();

gpu_set_blendmode(bm_add);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale+.2, image_yscale+.2, image_angle, cor, image_alpha - 0.2);
gpu_set_blendmode(bm_normal);

if (cor=c_aqua)&&(obj_player.velocidade>=10){
	instance_destroy();
}
else if (cor=c_yellow)&&(obj_player.espera_tiro<=13){
	instance_destroy();
}
else if (cor=c_red)&&(obj_player.level_tiro>=6){
	instance_destroy();
}