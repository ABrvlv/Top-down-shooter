var buff_length = array_length(oBuff_Data.valid)
index = irandom(buff_length-1)
buff = oBuff_Data.valid[index]
buff_name = buff.buff_name
array_delete(oBuff_Data.valid, index, 1)
#region

function buff_heal(){
	health = oPlayer.max_health
}

function buff_dmg(){
	oPlayer.damage *= 2
}

function buff_spd(){
	oPlayer.moveSpeed *= 2
}

function buff_inv(){
	oPlayer.active = "inv"
}

function buff_grenade(){
	oPlayer.active = "grenade"
}

#endregion