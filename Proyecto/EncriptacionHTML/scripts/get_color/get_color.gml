// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_color(dark){
	try{
		if dark=true{
			if global.dknss=0{
				color=make_color_rgb(clamp(global.r*(4/10),0,255),clamp(global.g*(4/10),0,255),clamp(global.b*(4/10),0,255))
			}
			if global.dknss=1{
				color=make_color_rgb(clamp(global.r*(5/10),0,255),clamp(global.g*(5/10),0,255),clamp(global.b*(5/10),0,255))
			}
			if global.dknss=2{
				color=make_color_rgb(clamp(global.r*(6/10),0,255),clamp(global.g*(6/10),0,255),clamp(global.b*(6/10),0,255))
			}
			if global.dknss=3{
				color=make_color_rgb(clamp(global.r*(7/10),0,255),clamp(global.g*(7/10),0,255),clamp(global.b*(7/10),0,255))
			}
			if global.dknss=4{
				color=make_color_rgb(clamp(global.r*(8/10),0,255),clamp(global.g*(8/10),0,255),clamp(global.b*(8/10),0,255))
			}
		}else{
			color=make_color_rgb(clamp(global.r,0,255),clamp(global.g,0,255),clamp(global.b,0,255))
		}
		
		return color;
	}
	catch(e){
		global.r=0
		global.g=117
		global.b=196
		global.dknss=3
		
		if dark=true{
			if global.dknss=0{
				color=make_color_rgb(clamp(global.r*(4/10),0,255),clamp(global.g*(4/10),0,255),clamp(global.b*(4/10),0,255))
			}
			if global.dknss=1{
				color=make_color_rgb(clamp(global.r*(5/10),0,255),clamp(global.g*(5/10),0,255),clamp(global.b*(5/10),0,255))
			}
			if global.dknss=2{
				color=make_color_rgb(clamp(global.r*(6/10),0,255),clamp(global.g*(6/10),0,255),clamp(global.b*(6/10),0,255))
			}
			if global.dknss=3{
				color=make_color_rgb(clamp(global.r*(7/10),0,255),clamp(global.g*(7/10),0,255),clamp(global.b*(7/10),0,255))
			}
			if global.dknss=4{
				color=make_color_rgb(clamp(global.r*(8/10),0,255),clamp(global.g*(8/10),0,255),clamp(global.b*(8/10),0,255))
			}
		}else{
			color=make_color_rgb(clamp(global.r,0,255),clamp(global.g,0,255),clamp(global.b,0,255))
		}
		
		return color;
	}
}