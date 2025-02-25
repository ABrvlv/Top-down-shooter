switch (state){
	case 0: 
		enemy2_state_free(); 
		break;
	case 1:
		boss2_attack1();
		break;
	case 2:
		boss2_attack2();
		break;
	case 3:
		boss2_attack3();
		break;
	case 10:
		n = 0
		delay = 1
		break;
}

if (HP<=0) {
	instance_destroy(self);
}