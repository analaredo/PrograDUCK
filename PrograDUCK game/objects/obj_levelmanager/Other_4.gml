// Executa o setup da fase uma vez que num_fase estiver definido
if (!fase_setup_done && num_fase != noone) {
    scr_setup_fase(num_fase);
    fase_setup_done = true;
}


startDialogue(inicio_fase);