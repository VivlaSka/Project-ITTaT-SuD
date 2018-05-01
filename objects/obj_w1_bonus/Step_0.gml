
if(!place_meeting(x,y + 1, obj_player)) && (!isTouched)
{
	image_index = 0;
}
else
{
	image_index = 1;	
	isTouched = true;
}
if(isTouched and isntCreated){
	instance_create_layer(x,y - 64,"Player", obj_goomba);
	isntCreated = false;
}	