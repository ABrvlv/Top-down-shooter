HP -= oPlayer.damage;
instance_destroy(other);

if (HP <= 0) {
	oPlayer.finished = true
	var buff = instance_create_layer(x,y,"Instances", oBuff);
	var buff = instance_create_layer(x-200,y,"Instances", oBuff);
	var buff = instance_create_layer(x+200,y,"Instances", oBuff);
	oBuff_Data.valid = oBuff_Data.buffs
	instance_destroy(self);
}