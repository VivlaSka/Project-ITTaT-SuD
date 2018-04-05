
if(player != noone){
	xTo = player.x;
	yTo = player.y;
}
x += (xTo - x) / 10;
y += (yTo - y) / 10;


x = clamp(x, vWidth_half, room_width - vWidth_half);
y = clamp(y, vHeight_half, room_height - vHeight_half);


camera_set_view_pos(cam, x - vWidth_half, y - vHeight_half)