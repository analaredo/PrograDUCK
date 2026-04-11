function scr_verify_level3(){
    with (obj_gamemanager) {
        if (global.totalbites == 5) {
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

