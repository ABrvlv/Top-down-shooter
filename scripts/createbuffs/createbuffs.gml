// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function createbuffs(){
	var buff_length = array_length(oBuff_Data.buffs) 
	buff = oBuff_Data.buffs[irandom(buff_length-1)]
	buff_name = buff.buff_name;
	
	var buff = instance_create_layer(x,y,"Instances", oBuff);
	var buff = instance_create_layer(x-200,y,"Instances", oBuff);
	var buff = instance_create_layer(x+200,y,"Instances", oBuff);
}