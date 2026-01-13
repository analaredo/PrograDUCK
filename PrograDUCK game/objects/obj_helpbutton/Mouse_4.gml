// Só abre help se pode interagir (não há outro diálogo ativo)
if (can_interact()) {
    // Inherit the parent event
    event_inherited();
    // Garantir que a variável existe antes de incrementar
    if (!variable_global_exists("totalhelp")) {
        global.totalhelp = 0;
    }
    global.totalhelp += 1;
    with (obj_levelmanager){
        startDialogue(help_fase);
    }
}
