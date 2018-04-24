x = mouse_x;
y = mouse_y;

if(mouse_check_button(mb_right)){
	image_index = 1;
	with(obj_ak47){
		minDevBullet = -3;
		maxDevBullet = 3;
	}
}
else{
	image_index = 0;
	with(obj_ak47){
		minDevBullet = -12;
		maxDevBullet = 12;
	}
}