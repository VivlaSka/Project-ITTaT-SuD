x = obj_player.x;
y = obj_player.y + 27;

image_angle = point_direction(x,y, mouse_x, mouse_y);

if(image_angle < 90 or image_angle > 270){
	image_yscale = 1;
}
else
{
	image_yscale = -1;	
}
delay = delay -1;
recoil = max(0, recoil - 1);
if(mouse_check_button(mb_left) && delay < 0 && ammo > 0)
{
	delay = 5;
	recoil = 5;
	with(instance_create_layer(x + lengthdir_x(10, image_angle),y + lengthdir_y(5,image_angle), "Kogels", obj_kogel))
	{
		speed = 30;
		direction = other.image_angle + random_range(other.minDevBullet, other.maxDevBullet);
		image_angle = direction;
	}
	ammo = ammo - 1;
	
}

x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);

