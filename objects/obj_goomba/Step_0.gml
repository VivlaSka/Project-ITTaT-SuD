verSpeed = verSpeed + grav;
if(place_meeting(x + horSpeed, y, obj_ground_mid)){
	while(!place_meeting(x + sign(horSpeed), y, obj_ground_mid )){
		x += sign(horSpeed);
	}
	horSpeed = -horSpeed;
}

x += horSpeed;

if(place_meeting(x, y + verSpeed, obj_ground_mid)){
	while(!place_meeting(x , y + sign(verSpeed), obj_ground_mid)){
		y += sign(verSpeed);
	}
	verSpeed = 0;
}
y += verSpeed;

//bumperDeath

if(place_meeting(x,y-1, obj_player)){
	//with(instance_create_layer(x,y,"Kogels", obj_goomba)){
	//	hp -= 10
	//}
	hp -= 10;
}
if(place_meeting(x + sign(horSpeed),y, obj_player)){
	with(obj_player){
		hp -= 10;
	}
}
if(hp < 1){
	instance_destroy();
	instance_create_layer(x,y, "Player", obj_goombaD)
}

