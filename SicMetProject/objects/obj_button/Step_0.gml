/// @description change 
// You can write your code in this editor
if (mouse_x >= bbox_left and mouse_x <= bbox_right and 
	mouse_y >= bbox_top  and mouse_y <=  bbox_bottom){
	if image_index == 0 {
			image_index = 1
			_vImgIdxTmp = 0
		}
	else if image_index == 2  {
			image_index = 3
			_vImgIdxTmp = 2
		}
	}
else image_index = _vImgIdxTmp

if mouse_check_button_released(mb_left){
	if (mouse_x >= bbox_left and mouse_x <= bbox_right and 
		mouse_y >= bbox_top  and mouse_y <=  bbox_bottom){
		if image_index == 1 {
				image_index = 2
				_vImgIdxTmp = image_index
				setWall(obj_followWall)
			}
		else if image_index == 3 {
				image_index = 0
				_vImgIdxTmp = image_index
				setWall(obj_avoidWall)
			}
		}
}