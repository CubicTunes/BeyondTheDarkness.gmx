if keyboard_check_pressed(vk_escape) {
    x = -999
    y = -999
    if paused=false { //pause room if not paused
        alarm[1]=1
        paused=true
        //scrn = sprite_create_from_surface(0,view_xview,view_yview,view_wview,view_hview,0,0,0,0)
        screen_save("skunk.png")
        instance_deactivate_region(0,0,room_width,room_height,1,1)
        scrn = sprite_add("skunk.png",1,false,false,0,0)
        
    
    } else {
    
    if paused=true { //unpause room if paused
        paused=false
        instance_activate_region(0,0,room_width,room_height,1)
        scrn = -1
        alarm[1]=0
        drawpause=false
    }
    
    }
}
