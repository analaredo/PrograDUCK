// Alarm 0 - Processa as mordidas com delay (Level 3)

if (loop_counter < loop_target) {
    // Dá uma mordida
    global.totalbites++;
    loop_counter++;
    
    // Reativa o alarm para próxima mordida
    alarm[0] = 30; // 0.5 segundos
} else {
    // Terminou - verifica o resultado
    if (global.totalbites == 5) {
        startDialogue($"SUCCESS_LEVEL3");
        scr_win();
    } else if (global.totalbites < 0) {
        startDialogue($"ERROR_NEGATIVEBITES");
        scr_fail();
    } else if (global.totalbites > 5) {
        startDialogue($"ERROR_TOOMANYBITES");
        scr_fail();
    } else if (global.totalbites < 5) {
        startDialogue($"ERROR_NOTENOUGHBITES");
        scr_fail();
    }
}