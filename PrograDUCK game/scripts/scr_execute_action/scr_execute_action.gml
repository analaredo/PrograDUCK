function execute_action(action, target_param){
    
    switch (action) {
        case scr_walk:
            scr_walk(target_param);
            break;

        case scr_fillbowl:
            scr_fillbowl();
            break;

        case scr_eat:
			scr_eat();
            break;
			
		 case scr_getfood:
			scr_getfood();
            break;	
		
		 case scr_dresspajamas:
			scr_dresspajamas();
            break;
		
		case scr_liedown:
			scr_liedown();
			break;
		
		case scr_switchlight:
			scr_switchlight();
			break;
		

        default:
            show_debug_message("Ação desconhecida: " + string(action));
            break;
    }
    
}
