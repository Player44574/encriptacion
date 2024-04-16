// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_input_box(x,y,width,height,_string){
	draw_set_alpha(0.5)
	draw_set_color(c_black)
	draw_roundrect_ext(x+2,y+2,x+width+2,y+height+2,16,16,false)
	draw_set_alpha(1)
	draw_set_color(global.dkAccentColor)
	draw_roundrect_ext(x,y,x+width,y+height,16,16,false)
	draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	draw_text_shadow(x+(width/2),y+(height/2)+2,_string)
	draw_set_halign(fa_top)
	draw_set_valign(fa_left)
	
	if mouse_check_button_released(mb_any) and point_in_rectangle(mouse_x,mouse_y,(x/global.zoom),(y/global.zoom),((x+width)/global.zoom),((y+height)/global.zoom)){pressed=1}
	else{pressed=0}
	
	return pressed;
}