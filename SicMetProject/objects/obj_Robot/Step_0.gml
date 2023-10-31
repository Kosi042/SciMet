/// @description Insert description here
// You can write your code in this editor

timer +=1


// wandering routine
if state == 0{
	//--
	image_index = 0 // change image to state
	// end conditions
	if irandom(2400) == 100{
		timer = 0 
		state = 1
		rand_dir = choose(-1, 1)
	}

}

// 
else if state == 1{
	// turn around
	image_angle -= rand_dir*4
	direction += rand_dir*4
	image_index = 1 // change image to state
	
	// end conditions
	if timer == 50 {
		state = 0
		timer = 0
	}
}

// avoid
else if state == 2{
	image_index = 2 // change image to state
	if timer < rand_timer_1 {
		speed_robot = -1
		//x = speed_robot*cos(direction*(pi/180))
		//y = speed_robot*sin(direction*(pi/180))
	}
	else if timer < rand_timer_2{
		speed_robot = 0
		image_angle -= rand_dir*4
		direction += rand_dir*4
		
	}
	else {
		speed_robot = 2
		state = 0
	}
}
 
// beeclust
else if state == 3{
	image_index = 3 // change image to state
	if timer < bee_timer {
		image_angle -= rand_dir
		direction += rand_dir
	}
	else {
		state = 0
		timer = 0
		speed_robot = 2
	}	

}

// follow
else if state == 4{
	image_index = 4 // change image to state
	if timer < 30 {

		image_angle -= 2
		direction += 2
	}
	else if timer < 200 {		
		image_angle += 2
		direction -= 2
		speed_robot = 2
	}
	else {
		state = 0
		timer = 0
		speed_robot = 2
	}
	
}
x += speed_robot*cos(direction*(pi/180))
y += speed_robot*sin(direction*(pi/180))
//move_and_collide(speed_robot*cos(direction*(pi/180)),speed_robot*sin(direction*(pi/180 )), [obj_Robot,obj_OuterWall])