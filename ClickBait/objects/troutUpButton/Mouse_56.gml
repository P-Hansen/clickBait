/// @description Insert description here

if(disabled == false and mouse_x > _x and mouse_x < width and mouse_y > _y and mouse_y < height and gobyObject.money >= cost){
	colour = c_white;
	alarm[1] = room_speed*0.15;
	gobyObject.money -= cost;
	gobyObject.odds -= 1;
	troutObject.odds += 1;
	cost = fibonacci(count);
	count++;
}