///@description Animatie sprites: General
if(!place_meeting(x,y + 1, obj_ground_mid))
{
	sprite_index = spr_player_jump;
	image_speed = 0;
	if(sign(verSpeed) > 0) image_index = 1;
	else image_index = 0;
}
else
{
	image_speed = 1;
	if(horSpeed == 0)
	{
		sprite_index = spr_player_stand;
	}
	else
	{
		sprite_index = spr_player_run;
		if(loopKey){
			image_speed = 2;	
		}
	}
}