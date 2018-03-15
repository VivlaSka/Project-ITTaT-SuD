rechtKey = keyboard_check(vk_right);
linksKey = keyboard_check(vk_left);
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

var test = "Hello";
//This is a test to see if the commits workd