function scr_level3_check_result() {
    with (obj_levelmanager) {
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
}
