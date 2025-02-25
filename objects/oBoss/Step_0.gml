switch (state){
	case 0: 
		enemy1_state_free(); 
		break;
	case 1:
		boss1_attack1();
		break;
	case 2:
		boss1_attack2();
		break;
	case 3:
		boss1_attack3();
		break;
	case 10:
		n = 0
		delay = 1
		break;
}

if (HP<=0) {
	instance_destroy(self);
}