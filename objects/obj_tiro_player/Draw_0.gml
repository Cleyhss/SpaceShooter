/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_self();

gpu_set_blendmode(bm_add);
draw_sprite_ext(spr_brilho_tiro1, image_index, x, y, image_xscale * 0.7, image_yscale * .7, image_angle, c_aqua, 0.3);

gpu_set_blendmode(bm_normal);
