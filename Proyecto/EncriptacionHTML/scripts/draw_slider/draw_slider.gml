// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_slider(x,y,min,max,length,height,leftColor,rightColor,sliderColor,currentValue){    
	try{
		if point_in_rectangle(mouse_x,mouse_y,(x/global.zoom),(y/global.zoom),((x+length)/global.zoom),((y+height*2)/global.zoom)) and mouse_check_button(mb_any){
			if mouse_x>=(x/global.zoom) and mouse_x<=((x+length)/global.zoom){var sliderPosition=mouse_x-(x/global.zoom)}
			var value=sliderPosition*max/length
		}
		else{
			var value=currentValue
		}
		var sliderVisual=value*length/max
    
		draw_set_color(rightColor);
		draw_rectangle(x,y,x+length,y+height,false);
	
		draw_set_color(leftColor);
		draw_rectangle(x,y,x+sliderVisual,y+height,false);
	
		draw_set_color(sliderColor);
		draw_roundrect_ext(x+sliderVisual-height/2,y-height,x+sliderVisual+height/2,y+(height)*2,height/2,height/2,false);

		return value;
	}catch(e){
		sliderPosition=0
	}
}