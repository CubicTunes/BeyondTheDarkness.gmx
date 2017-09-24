//dash in the last direction when pressing x key
//move in direction of arrow key
//animate properly while moving in a direction
if global.pause=false {
xspd=0
yspd=0
MILKY_FARTS=true

if lastpos="up" {
    minframe=12
}
if lastpos="down" {
    minframe=0
}
if lastpos="left" {
    minframe=4
}
if lastpos="right" {
    minframe=8
}
maxframe=minframe
if keyboard_check(vk_left)!=keyboard_check(vk_right) or keyboard_check(vk_up)!=keyboard_check(vk_down) {
    maxframe=minframe+4
}
scr_animate(minframe,maxframe,0.1)
if keyboard_check(ord("X")) { //dashing
    if lastpos="up" and keyboard_check(vk_up) {
        yspd=movespeed*-1.6
        xspd=0
    }
    if lastpos="down" and keyboard_check(vk_down) {
        yspd=movespeed*1.6
        xspd=0
    }
    if lastpos="left" and keyboard_check(vk_left) {
        xspd=movespeed*-1.6
        yspd=0
    }
    if lastpos="right" and keyboard_check(vk_right) {
        xspd=movespeed*1.6
        yspd=0
    }
    if place_free(x+xspd,y) {
        x+=xspd
    }
    if place_free(x,y+yspd) {
        y+=yspd
    }
    exit
}



if keyboard_check(vk_up) { //movement
    yspd-=movespeed
}
if keyboard_check(vk_down) {
    yspd+=movespeed
}
if keyboard_check(vk_left) {
    xspd-=movespeed
}
if keyboard_check(vk_right) {
    xspd+=movespeed
}
//if keyboard_check(vk_up)=false and keyboard_check(vk_down)=false and keyboard_check(vk_left)=false and keyboard_check(vk_right)=false {
//
//}
if place_free(x+xspd,y) {
x+=xspd
}
if place_free(x,y+yspd) {
y+=yspd
}

if abs(yspd) > abs(xspd) { //setting look position
    if yspd > 0 {
        if MILKY_FARTS {
            lastpos="down"
        }
    }
    if yspd < 0 {
        lastpos="up"
    }
}

if abs(yspd) < abs(xspd) {
    if xspd > 0 { 
        lastpos="right"
    }
    if xspd < 0 {
        lastpos="left"
    }
}

}
