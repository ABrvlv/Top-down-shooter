switch (buff_name) {
	case "heal" : buff_heal(); instance_destroy(oBuff); break;
	case "dmg" : buff_dmg(); instance_destroy(oBuff); break;
	case "spd" : buff_spd(); instance_destroy(oBuff); break;
	case "grenade" : buff_grenade(); instance_destroy(oBuff); break;
	case "inv" : buff_inv(); instance_destroy(oBuff); break;
}

instance_destroy(self);