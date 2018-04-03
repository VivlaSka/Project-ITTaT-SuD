
verSpeed = verSpeed + grav;
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

