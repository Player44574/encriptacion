//draw background
draw_background(global.accentColor)

//set font
draw_set_font(font)

//draw 3 buttons
if aspectRatio>=1{
	buttonWidth=(global.ww-128-(64*2))/3
	if draw_text_button(64,32,buttonWidth,64,"ROT-13 (X)",global.page!=0,"released"){global.page=0 inputString="Escribe para encriptar" outputString="Se mostrará aquí el resultado"}
	if draw_text_button(64+64+buttonWidth,32,buttonWidth,64,"Base64",global.page!=1,"released"){global.page=1 inputString="Escribe para encriptar" outputString="Se mostrará aquí el resultado"}
	if draw_text_button(64+(64+buttonWidth)*2,32,buttonWidth,64,"SHA1",global.page!=2,"released"){global.page=2 inputString="Escribe para encriptar" outputString="Se mostrará aquí el resultado"}

}
else{
	buttonWidth=global.ww/3
	if draw_text_button(0,32,buttonWidth,64,"ROT-13 (X)",global.page!=0,"released"){global.page=0 inputString="Escribe para encriptar" outputString="Se mostrará aquí el resultado"}
	if draw_text_button(buttonWidth,32,buttonWidth,64,"Base64",global.page!=1,"released"){global.page=1 inputString="Escribe para encriptar" outputString="Se mostrará aquí el resultado"}
	if draw_text_button(buttonWidth*2,32,buttonWidth,64,"SHA1",global.page!=2,"released"){global.page=2 inputString="Escribe para encriptar" outputString="Se mostrará aquí el resultado"}
}

if global.page=0{
	draw_text_shadow(64,128,"Rotar: " + string(value) + " veces.")
	value=round(draw_slider(64,192,0,25,global.ww-128,16,global.dkAccentColor,c_grey,global.dkAccentColor,value))
	
	if draw_input_box(64,256,global.ww-128,128,inputString){
		inputString=""
		inputInAction=1
	}
	
	if inputInAction=1{
		if keyboard_check_pressed(vk_anykey){
			if keyboard_check_pressed(vk_alt) or keyboard_check_pressed(vk_control) or keyboard_check_pressed(vk_shift) or keyboard_check_pressed(vk_tab) or keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_backspace){}
			else{
				inputString=string(inputString)+keyboard_lastchar
				inputString=string_copy(inputString,0,30)
			}
		}
		if keyboard_check_pressed(vk_space){
			inputString=inputString+" "
		}
		if keyboard_check_pressed(vk_enter){
			if inputString!=""{processInfo=1}
		}
		if keyboard_check_pressed(vk_backspace){inputString=string_copy(inputString,0,string_length(inputString)-1)}
	}
	
	if processInfo=1 and antValue=value{
		inputInAction=0
		processInfo=0
		outputString=cipher(inputString,value)
	}else if antValue!=value{
		antValue=value
		outputString=cipher(inputString,value)
	}
	
	draw_text_button(64,448,global.ww-128,128,outputString,global.page=0,"released")
	
	if draw_text_button(64,640,global.ww-128,64,"Información",global.page=0,"released"){
		url_open("https://es.wikipedia.org/wiki/ROT13")
	}
}

if global.page=1{
	if draw_input_box(64,256,global.ww-128,128,inputString){
		inputString=""
		inputInAction=1
	}
	
	if inputInAction=1{
		if keyboard_check_pressed(vk_anykey){
			if keyboard_check_pressed(vk_alt) or keyboard_check_pressed(vk_control) or keyboard_check_pressed(vk_shift) or keyboard_check_pressed(vk_tab) or keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_backspace){}
			else{
				inputString=string(inputString)+keyboard_lastchar
				inputString=string_copy(inputString,0,30)
			}
		}
		if keyboard_check_pressed(vk_space){
			inputString=inputString+" "
		}
		if keyboard_check_pressed(vk_enter){
			if inputString!=""{processInfo=1}
		}
		if keyboard_check_pressed(vk_backspace){inputString=string_copy(inputString,0,string_length(inputString)-1)}
	}
	
	if processInfo=1{
		inputInAction=0
		processInfo=0
		outputString=base64_encode(inputString)
	}
	
	draw_text_button(64,448,global.ww-128,128,outputString,global.page=1,"released")
	
	if draw_text_button(64,640,global.ww-128,64,"Información",global.page=1,"released"){
		url_open("https://en.wikipedia.org/wiki/Base64")
	}
}

if global.page=2{
	if draw_input_box(64,256,global.ww-128,128,inputString){
		inputString=""
		inputInAction=1
	}
	
	if inputInAction=1{
		if keyboard_check_pressed(vk_anykey){
			if keyboard_check_pressed(vk_alt) or keyboard_check_pressed(vk_control) or keyboard_check_pressed(vk_shift) or keyboard_check_pressed(vk_tab) or keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_backspace){}
			else{
				inputString=string(inputString)+keyboard_lastchar
				inputString=string_copy(inputString,0,30)
			}
		}
		if keyboard_check_pressed(vk_space){
			inputString=inputString+" "
		}
		if keyboard_check_pressed(vk_enter){
			if inputString!=""{processInfo=1}
		}
		if keyboard_check_pressed(vk_backspace){inputString=string_copy(inputString,0,string_length(inputString)-1)}
	}
	
	if processInfo=1{
		inputInAction=0
		processInfo=0
		outputString=sha1_string_unicode(inputString)
	}
	
	draw_text_button(64,448,global.ww-128,128,outputString,global.page=2,"released")
	
	if draw_text_button(64,640,global.ww-128,64,"Información",global.page=2,"released"){
		url_open("https://en.wikipedia.org/wiki/SHA-1")
	}
}