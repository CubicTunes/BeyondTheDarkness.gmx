//DEVELOPER HELPING TOOL
if keyboard_check_pressed(vk_tab) {
    rmnumb = get_string("Enter room number","")
    if rmnumb = "nort" {
        scr_nort()
        exit
    } else {
        room_goto(real(rmnumb))
        exit
    }
}