/// @description shift to avoid
// You can write your code in this editor
if state !=2 {
	state = 2 // avoid state
	timer = 0
	rand_timer_1 = irandom_range(30, 50)
	rand_timer_2 = irandom_range(50, 70)
	rand_dir = choose(-1, 1)
}

