/// @description Insert description here
// You can write your code in this editor
if(mode != TRANS.OFF){
	if(mode == TRANS.INTRO){
		percent = max(0, percent - 0.15);
	}

	else{
		percent = max(1, percent + 0.15);
	}
	if(percent == 1 ) or (percent == 0){
		switch(mode){
			case TRANS.INTRO:{
				mode = TRANS.OFF;
				break;
			}
			case TRANS.NEXT:{
				mode = TRANS.INTRO;
				room_goto_next();
				break;
			}
			case TRANS.GOTO:{
				mode = TRANS.INTRO;
				room_goto(target);
				break;
			}
			case TRANS.RESTART:{
				game_restart();
				break;
			}
			
			
			
		}
	}
}

