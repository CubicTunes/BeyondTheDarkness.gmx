///scr_rms(xpos,ypos,targetx,targety,room,radius)
xpos = argument0
ypos = argument1
targetx = argument2
targety = argument3
troom = argument4
radius = argument5

    if distance_to_point(xpos,ypos) <= radius {
        room_goto(troom)
        x = targetx
        y = targety
        instance_create(x,y,obj_FS)
    }
