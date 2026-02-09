/// @function can_interact()
/// @return {bool} - Retorna true se o jogador pode interagir, false caso contrário

function can_interact() {
    // Bloqueia interação se há diálogo ativo
    if (instance_exists(obj_textbox)) {
        return false;
    }
    
    // Bloqueia interação se o levelmanager está executando ações
    if (instance_exists(obj_levelmanager) && obj_levelmanager.is_executing) {
        return false;
    }
	
		
    
    // Permite interação se nenhuma condição bloqueante for verdadeira
    return true;
}