// Só abre help se pode interagir (não há outro diálogo ativo)
if (can_interact()) {
    // Inherit the parent event
    event_inherited();
    with (obj_levelmanager){
        startDialogue(help_fase);
    }
}
