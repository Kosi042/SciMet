// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global._obj = obj_avoidWall

function setWall(obj){
		global._obj = obj
}

function getWall(){
	return global._obj	
}