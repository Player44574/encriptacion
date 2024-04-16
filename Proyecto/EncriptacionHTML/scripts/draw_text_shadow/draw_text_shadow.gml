// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_text_shadow(x,y,string){
	draw_set_color(c_black)
	draw_text(x+2,y+2,string)
	draw_set_color(c_white)
	draw_text(x,y,string)
}