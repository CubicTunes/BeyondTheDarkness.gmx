if global.nort=false and room!=obj_mastercontrol.nort {
if global.pause=false {
if keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up) {
image_index = 12
}
if keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down) {
image_index = 0
}
if keyboard_check_pressed(ord("A")) or keyboard_check_pressed(vk_left) {
image_index = 4
}
if keyboard_check_pressed(ord("D")) or keyboard_check_pressed(vk_right) {
image_index = 8
}

if keyboard_check(ord("W"))  and place_free(x,y-movespeed) or keyboard_check(vk_up) and place_free(x,y-movespeed){
global.animmin=12
global.animmax=12+3
y-=movespeed
lastpos="up"
}
if keyboard_check(ord("S"))  and place_free(x,y+movespeed) or keyboard_check(vk_down) and place_free(x,y+movespeed){
global.animmin=0
global.animmax=0+3
y+=movespeed
lastpos="down"
}
if keyboard_check(ord("A"))  and place_free(x-movespeed,y) or keyboard_check(vk_left) and place_free(x-movespeed,y){
global.animmin=4
global.animmax=4+3
x-=movespeed
lastpos="left"
}
if keyboard_check(ord("D"))  and place_free(x+movespeed,y) or keyboard_check(vk_right) and place_free(x+movespeed,y){
global.animmin=8
global.animmax=8+3
x+=movespeed
lastpos="right"
}

if keyboard_check(ord("W"))=false and keyboard_check(ord("S"))=false and keyboard_check(ord("A"))=false and keyboard_check(ord("D"))=false and keyboard_check(vk_up)=false and keyboard_check(vk_down)=false and keyboard_check(vk_left)=false and keyboard_check(vk_right)=false {
if lastpos = "up" {
image_index=12
}
if lastpos = "down" {
image_index=0
}
if lastpos = "left" {
image_index=4
}
if lastpos = "right" {
image_index=8
}
}
}
}
if global.nort=true and room = obj_mastercontrol.nort {
sprite_index = Spr_Tohru
image_speed=0
if dir = undefined {
    dir = "up"
}
if keyboard_check_pressed(vk_up) {
dir = "up"
image_index=12
}
if keyboard_check_pressed(vk_down) {
dir = "down"
image_index=0
}
if keyboard_check_pressed(vk_left) {
dir = "left"
image_index=4
}
if keyboard_check_pressed(vk_right) {
dir = "right"
image_index=8
}
if dir = "up" {
    y-=obj_player.movespeed
}
if  dir = "down" {
    y+=obj_player.movespeed
}
if dir = "left" {
    x-=obj_player.movespeed
}
if dir = "right" {
    x+=obj_player.movespeed
}
}