if dir = undefined {
    dir = "up"
}
if keyboard_check_pressed(vk_up) {
dir = "up"
}
if keyboard_check_pressed(vk_down) {
dir = "down"
}
if keyboard_check_pressed(vk_left) {
dir = "left"
}
if keyboard_check_pressed(vk_right) {
dir = "right"
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
