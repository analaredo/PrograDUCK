function scr_tutorial(){
    with (obj_gamemanager) {
    var slot0 = noone;
    var slot1 = noone;

    if (array_length(slots) >= 2 && instance_exists(slots[0]) && instance_exists(slots[1])) {
      slot0 = slots[0].card_action;
      slot1 = slots[1].card_action;


    }

    if ((slot0 != "azul")&&(slot0 != noone) || (slot1 != "laranja")&&(slot1 != noone)) {
      startDialogue($"ERROR_WRONGCARDCOLOR");
    }
     else if (slot0 == noone || slot1 == noone) {
      startDialogue($"ERROR_EMPTYSLOT");
     }
     else {
      startDialogue($"SUCCESS_TUTORIAL");
      scr_win();
    }





  }
}