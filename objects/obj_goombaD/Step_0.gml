/// @description Insert description here
if(place_meeting(x + horSpeed, y, obj_ground_mid)){
	while(!place_meeting(x + sign(horSpeed), y, obj_ground_mid )){
		x += sign(horSpeed);
	}
	horSpeed = -horSpeed;
}


if(place_meeting(x, y + verSpeed, obj_ground_mid)){
	while(!place_meeting(x , y + sign(verSpeed), obj_ground_mid)){
		y += sign(verSpeed);
	}
	verSpeed = 0;
}