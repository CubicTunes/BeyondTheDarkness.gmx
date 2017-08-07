if mode="planning" {
if keyboard_check_pressed(vk_up) {
msel-=1
if msel=0 {
msel=6
}
}
if keyboard_check_pressed(vk_right) {
    if msel<=mmax/2 {
        msel+=mmax/2
    } else {
        msel-=mmax/2
    }
}
if keyboard_check_pressed(vk_left) {
    if msel>mmax/2 {
        msel-=mmax/2
    } else {
        msel+=mmax/2
    }
}
if keyboard_check_pressed(vk_down) {
msel+=1
if msel=7 {
msel=1
}
}
if msel<1 {
msel=1
}
if msel>6 {
msel=6
}
}



if keyboard_check_pressed(vk_enter) and mode="planning" {

    sel = string_lower(mup[msel])
    if menu="main" {
    sel = string_copy(sel,2,string_length(sel))
    }
    
    
    if menu="main" {
        if sel="attack" {
            mode="selection"
            exit
        }
        if sel="skills" {
            menu="skills"
            exit
        }
        if sel="items" {
            menu="items"
            exit
        }
        if sel="sync" {
        
        }
        if sel="awaken" {
        
        }
        if sel="flee" {
            if instance_exists(obj_overlay) {
                obj_overlay.alarm[2]=1
            }
            global.enemies=1
            instance_destroy()
        }
    }



}

if menu="skills" {
    if keyboard_check_pressed(vk_rshift) {
        menu="main"
        exit
    }
}

if menu="items" {
    if keyboard_check_pressed(vk_rshift) {
        menu="main"
        exit
    }
}
