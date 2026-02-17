 // Atualiza o texto dinamicamente baseado no conteúdo inicial
if (string_pos("dicas", text_content) > 0) {
    text_content = $"Total de dicas: \n\n     {global.totalhelp}";
}
else if (string_pos("tentativas", text_content) > 0) {
    text_content = $"Total de tentativas: \n\n     {global.totaltries}";
}
else if (string_pos("fases", text_content) > 0) {
    text_content = $"Total de fases\n jogadas: \n\n     {global.levelscompleted}";
}