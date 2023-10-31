/// @description creat wall and scale
// You can write your code in this editor
if (mouse_x >= bbox_left-16 and mouse_x <= bbox_right+16 and 
	mouse_y >= bbox_top-16  and mouse_y <=  bbox_bottom+16){
	if mouse_check_button_pressed(mb_left) and !lPressed{
		var _wall =  getWall()
		createdObj = instance_create_layer(mouse_x,mouse_y, "Instances", _wall)
		lPressed = true
		
		show_debug_message(instance_count)
		show_debug_message(createdObj)
	}
	else if lPressed{
		dx = mouse_x - createdObj.xstart
		dy = mouse_y - createdObj.ystart
		createdObj.image_xscale = sqrt(dx*dx+dy*dy)
		show_debug_message(darctan2(dx, dy))
		createdObj.image_angle = darctan2(dx, dy) -90
	}

	if mouse_check_button_released(mb_left){
		lPressed = false	
	}
}




