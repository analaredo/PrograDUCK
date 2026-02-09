//STATS
global.totaltries = 0;
global.totalhelp  = 0;
global.levelscompleted = 0;

//CORES
global.duck_purple = #462d5c;
global.duck_green = #c6c127;
global.duck_pink = #ffa5a3;

//SELETOR DE NIVEIS
global.levels = [0,1,1,1]; // 0 = bloqueada, 1 = liberada
global.levels_completed = [0,0,0,0]; // 0 = não completada, 1 = completada

//DUCK DATA
global.totalbites = 0;


var total_levels = array_length(global.levels_completed);
var completed_count = 0;

for (var i = 0; i < total_levels; i++) {
    if (global.levels_completed[i] == 1) {
        completed_count++;
    }
}

global.completion_percentage = (total_levels > 0) ? round((completed_count / total_levels) * 100) : 0;
