
for (var i = 0; i <= 63; i += 1)
{
	bullet = instance_create_layer(x, y,"Instances", oBullet_Enemy);
	bullet.direction = i*360/64
}
	
instance_destroy(self)

