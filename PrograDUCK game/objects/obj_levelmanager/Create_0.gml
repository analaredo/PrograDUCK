
scr_variables();



num_fase = noone;
slots = [];            
script_fase = noone;
script_verify = noone;
inicio_fase = noone;
help_fase = noone;
is_executing = false;  // Controla se está executando ações
scr_createslots();

// Setup da fase será feito no Step quando necessário
fase_setup_done = false;