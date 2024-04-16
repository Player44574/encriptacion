try{
	if (browser_width != width || browser_height != height){
		width = browser_width;
		height = browser_height;
		window_set_size(width, height);
	}
	
	global.ww=browser_width/global.zoom
	global.wh=browser_height/global.zoom

	aspectRatio=global.ww/global.wh;
	camera_set_view_size(view_camera[0],global.ww,global.wh);
	surface_resize(application_surface,window_get_width(),window_get_height());
	display_set_gui_size(global.ww, global.wh);
}catch(e){}