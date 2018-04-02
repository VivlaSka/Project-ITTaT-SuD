rechtKey = keyboard_check(vk_right) || keyboard_check(ord("D"));
linksKey = keyboard_check(vk_left) || keyboard_check(ord("Q"));
jump = keyboard_check_pressed(vk_space);

var move_player = rechtKey - linksKey;

horSpeed = move_player * stapSpeed;
verSpeed = verSpeed + grav;

if(place_meeting(x, y + 3, obj_ground_mid)) and (jump){
	verSpeed = jumpH;
}

if(place_meeting(x + horSpeed, y, obj_ground_mid)){
	while(!place_meeting(x + sign(horSpeed), y, obj_ground_mid )){
		x = x + sign(horSpeed);
	}
	horSpeed = 0;
}

x = x + horSpeed;

if(place_meeting(x, y + verSpeed, obj_ground_mid)){
	while(!place_meeting(x , y + sign(verSpeed), obj_ground_mid)){
		y = y + sign(verSpeed);
	}
	verSpeed = 0;
}

y = y + verSpeed;

relPosMuis = point_direction(x,y,mouse_x,mouse_y);


if(relPosMuis < 90 or relPosMuis > 270){
	image_xscale = 1;
}
else
{
	image_xscale = -1;	
}




