///scr_rmt(xpos,ypos,targetx,targety,room,radius)
xpos = argument0
ypos = argument1
targetx = argument2
targety = argument3
troom = argument4
radius = argument5

if x < 0 or x > room_width or y < 0 or y > room_height {

    if distance_to_point(xpos,ypos) <= radius {
        room_goto(troom)
        x = targetx
        y = targety
    }

}
