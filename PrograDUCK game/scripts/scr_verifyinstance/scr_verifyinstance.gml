/// @function scr_verifyinstance(target_name)
/// @param {string} target_name - Nome do objeto a ser verificado
/// @return {Id.Instance} - ID da instância encontrada ou noone se não encontrar

function scr_verifyinstance(target_name) {
    var target_obj_index = asset_get_index(target_name);
    
    if (target_obj_index == -1) {
        show_debug_message("ERRO: Objeto '" + target_name + "' não existe!");
        return noone;
    }
    
    var target_obj = instance_find(target_obj_index, 0);
    
    if (!instance_exists(target_obj)) {
        show_debug_message("ERRO: Nenhuma instância de '" + target_name + "' encontrada na room!");
        return noone;
    }
    
    return target_obj;
}