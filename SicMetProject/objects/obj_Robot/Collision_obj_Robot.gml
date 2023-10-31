/// @description beeclust
// You can write your code in this editor
if state != 3{
	state = 3 // beeclust state
	timer = 0
	speed_robot = 0
	rand_dir = choose(-1, 1)
	if (x >= 300 and x <= 500 and y >= 120 and y <= 320){ // light gray boarder
		bee_timer = 800	
	}
	else if (x > 340 and x <= 460 and y >= 160 and y <= 280){ // white square
		bee_timer = 1600
	}
	else { // outside the square
		bee_timer = 200	
	}
}