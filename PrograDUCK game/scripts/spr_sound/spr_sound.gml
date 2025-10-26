
function play_sound(name) {
    if (sounds[name] != undefined) {
        audio_play_sound(sounds[name], 1, false); // 1 = volume (usar volume global opcional), false = não repetir
    }
}

function play_music(name) {
    if (music[name] != undefined) {
        // Para música anterior se existir
        if (current_music != noone) {
            audio_stop_sound(current_music);
        }
        current_music = music[name];
        audio_play_sound(current_music, 1, true); // true = loop
    }
}
