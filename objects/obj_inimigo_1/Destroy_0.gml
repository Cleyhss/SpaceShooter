/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
instance_create_layer(x, y, layer, obj_explosao_inimigos);

if (instance_exists(obj_control)){
	obj_control.ganha_pontos(pontos);
}

dropa_item(chance);