/// @description Calcula a porcentagem de conclusão do jogo
/// @return {real} Porcentagem de 0 a 100
function scr_get_completion_percentage() {
    var total_levels = array_length(global.levels_completed);
    var completed_count = 0;
    
    // Conta quantas fases foram completadas
    for (var i = 0; i < total_levels; i++) {
        if (global.levels_completed[i] == 1) {
            completed_count++;
        }
    }
    
    // Calcula a porcentagem
    if (total_levels > 0) {
        return (completed_count / total_levels) * 100;
    }
    
    return 0;
}
