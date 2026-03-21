audio_play_sound(snd_click,0,false);

status = !status;

// Alterna a variável (global ou instância)
if (variable_change != noone) {
	if (is_string(variable_change)) {
		// Se for string, assume que é global
		var current = variable_global_get(variable_change);
		variable_global_set(variable_change, !current);
	} else {
		// Se for estrutura, trabalha com a instância
		var current = variable_instance_get(variable_change.id, variable_change.var_name);
		variable_instance_set(variable_change.id, variable_change.var_name, !current);
	}
}