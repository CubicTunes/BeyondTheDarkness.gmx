if esel!=0 and instance_exists(global.enemies[esel]) {
    //show_message("setting "+string(global.enemies[esel].object_index)+" to yellow. esel="+string(esel))
    global.enemies[esel].image_blend=c_yellow
}

if mode="selection" {
    //show_message("mode is selection.")
    if keyboard_check_pressed(ord("P")) {//E     N     I    S"
        show_message(string(instance_number(obj_tempenemy)))
    }
    if keyboard_check_pressed(vk_left) {
        esel-=1
    }
    
    if keyboard_check_pressed(vk_right) {
        esel+=1
    }
    if keyboard_check_pressed(vk_enter) {
        mode="gotoplanning"
        thisobj = global.turnid[global.turn]
        //show_message(string(thisobj))
        //thisobj.enemselection=global.enemies[esel]
        global.enemies[esel].marks+=global.turnid[global.turn].mydamage
        esel=0
        global.turn+=1
        
        if global.turn>4 { //SET THIS TO MAX PARTY MEMBERS LATER!!!
        global.turn=1
        }
        exit
    }
    if esel<1 {
        esel=1
    }
    if esel>array_length_1d(global.enemies)-1 {
        esel=array_length_1d(global.enemies)-1
    }
}