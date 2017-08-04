if keyboard_check_pressed(vk_enter) {
    sel = string_lower(mup[msel])
    if menu="main" {
    sel = string_copy(sel,2,string_length(sel))
    }
    
    
    if menu="main" {
        if sel="attack" {
            
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
